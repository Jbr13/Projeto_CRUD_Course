package projeto_crud_course

class StudentController {

    def index() {

        List lista = Student.list()

        render(view: "/student/indexStudent", model: [studentsList: lista])

    }

    def add() {

        Student newStudent = new Student()

        render(template: "/student/formStudent", model: [studentAdd: newStudent])
    }

    def save() {

        Student newStudentSave = null

        if (params.id) {        // If para verificar se ao salvar trata-se de uma alteraçao ou novo estudante

            newStudentSave = Student.get(params.id)

        } else {

            newStudentSave = new Student()

        }

        newStudentSave.name = params.name
        newStudentSave.email = params.email
        newStudentSave.telephone = params.telephone
        newStudentSave.course = params.course
        newStudentSave.status = params.status
        newStudentSave.validate()

        if (!newStudentSave.hasErrors()) {

            newStudentSave.save(flush: true)
            render("Salvo com sucesso")

        } else {

            render("Algo deu errado")

        }

    }

    def listStudents() {

        List listStudents = Student.list()
        render(template: "listStudent", model: [studentsList: listStudents])

    }

    def editStudent() {

        Student student = Student.get(params.id)
        render(template: "/student/formStudent", model: [studentAdd: student])

    }

    def deleteStudent(Long id) {

        Student student = Student.get(id)
        student.delete(flush: true)

        List studentlist = Student.list()
        render (template: "listStudent", model: [studentsList: studentlist])

    }

}
