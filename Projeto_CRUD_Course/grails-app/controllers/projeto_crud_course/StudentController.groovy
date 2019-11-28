package projeto_crud_course

class StudentController {

    def index() {

        def lista = Student.list()

        render(view: "/student/indexStudent", model: [studentsList: lista])

    }

    def add() {

        Student newStudent = new Student()

        render(template: "/student/form", model: [studentAdd: newStudent])
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

        def listStudents = Student.list()
        render(template: "listStudent", model: [studentsList: listStudents])


    }

    def edit() {

        Student student = Student.get(params.id)
        render(template: "form", model: [studentAdd: student])

    }

    def delete() {

        Student student = Student.get(params.id as Long)
        student.delete(flush: true)

        def lista = Student.list()
        render (template: "listStudent", model: [student: lista])

    }

}
