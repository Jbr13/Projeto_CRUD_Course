package projeto_crud_course

import org.apache.commons.io.input.BOMInputStream

class Student {

    String name
    String email
    String telephone
    Course course
    String status

    static hasMany = [registration: Registration]
    // static belongsTo = [Registration]

    static constraints = {

        status inList: ["Registered", "Unregistered"]

        name nullable: false, blank: false;
        status nullable: false, blank: false;
        email email: true, unique: true;

    }

    static mapping = {
        version(false)
    }
}



