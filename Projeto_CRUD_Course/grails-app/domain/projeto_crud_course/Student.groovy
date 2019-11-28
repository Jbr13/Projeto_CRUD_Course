package projeto_crud_course

class Student {

    String name
    String email
    String telephone
    String course
    String status

    static hasMany = [registration: Registration]

    static constraints = {

        // status inList: ["Registered", "Unregistered"]

        name nullable: false, blank: false;
        status nullable: false, blank: false;
        // email email: true, unique: true;
        course nullable: true, blank: true;

    }

    static mapping = {
        version(false)
    }
}



