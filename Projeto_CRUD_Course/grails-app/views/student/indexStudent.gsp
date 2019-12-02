<%@ page import="projeto_crud_course.Student" %> %{--Importando classe de dominio Student--}%
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Cadastro estudantes</title>
    <g:javascript library="jquery"/>
    <script type="text/javascript">

        function loadList() {

            <g:remoteFunction controller="student" action="listStudents" update="divLista"/>

        }

        function deleteStudent(id) {

            if (confirm("Deseja realmente excluir esse registro?")) {

                <g:remoteFunction controller="student" action="deleteStudent" update="divLista" id="${id}"/>

            }

        }

    </script>

</head>

<body>

<g:remoteLink controller="student" action="addStudent" update="divForm">Add</g:remoteLink>

<g:if test="${studentsList?.size() > 0}">
    <head>
        <link rel="stylesheet" href="/css/formStudent.css">
    </head>

    <table>

        <tr>
            <th>Nome:</th>
            <th>Email:</th>
            <th>Telephone:</th>
            <th>Course:</th>
            <th>Status:</th>
        </tr>

        <g:each var="studentsInstance" in="${studentsList}">

            <tr>
                <th>${studentsInstance?.name}</th>
                <th>${studentsInstance?.email}</th>
                <th>${studentsInstance?.telephone}</th>
                <th>${studentsInstance?.course}</th>
                <th>${studentsInstance?.status}</th>

                <td>
                    <g:remoteLink controller="student" action="editStudent" update="divForm"
                                  id="${studentsInstance.id}">Edit</g:remoteLink>
                    &nbsp;
                    <g:remoteLink controller="student" action="deleteStudent" update="divLista"
                                  id="${studentsInstance.id}">Delete</g:remoteLink>
                </td>
            </tr>

        </g:each>
    </table>
</g:if>
<g:else>
    Nao ha estudantes cadastrados.
</g:else>

<div id="divForm"></div>

</body>
</html>

