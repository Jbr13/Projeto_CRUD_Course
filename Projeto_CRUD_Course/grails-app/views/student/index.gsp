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

        /* function deleteStudent(id) {         Funçao que envia msg de confirmaçao da exclusao

            if (confirm("Deseja relamente excluir esse registro?")) {

                %{--<g:remoteFunction controller="student" action="delete" update="divLista" id="${id}"/>--}%

            }

        } */

    </script>

</head>

<body>

    <g:remoteLink controller="student" action="add" update="divForm">Add</g:remoteLink>

<div id="divLista">

    <g:render template="lista" model="[studentsInstance: studentsList]"></g:render>

</div>

<div id="divForm"></div>

</body>
</html>

