package projeto_crud_course

class Course {

    String name
    String description
    String workload

    static hasMany = [registration: Registration]
    // static belongsTo = [Registration]

    static constraints = {

    }

    static mapping = {
        version(false)
    }
}
