<!DOCTYPE html>
<html>
<head>

    <meta name="layout" content="main"/>
    <title>Cadastro estudantes</title>
    <g:javascript library="jquery"/>

    <style type="text/css" media="screen">
    #page-body {
        background-color: #000000;
        border: .1em solid #fff;
        margin: 2em 2em 1em;
        padding: 1em;
        border-radius: 0.6em;
        height: 30%;
    }

    .ie6 #status {
        display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
    }

    #page-body ul {
        font-size: 0.9em;
        list-style-type: none;
        margin-bottom: 0.6em;
        padding: 0;
    }

    #page-body li {
        line-height: 1.3;
    }

    #page-body h1 {
        text-transform: uppercase;
        font-size: 1.1em;
    }

    #page-body {
        margin: 5%;
    }

    h1 {
        color: white;
    }

    h2 {
        margin-top: 1em;
        margin-bottom: 0.3em;
        font-size: 1em;
        color: white;
    }

    p {
        line-height: 1.5;
        margin: 0.25em 0;
    }

    #controller-list ul {
        list-style-position: inside;
    }

    #controller-list li {
        line-height: 1.3;
        list-style-position: inside;
        margin: 0.25em 0;
    }

    @media screen and (max-width: 480px) {
        #status {
            display: none;
        }

        #page-body {
            margin: 0 1em 1em;
        }

        #page-body h1 {
            margin-top: 0;
        }
    }
    </style>

    <script type="text/javascript">

        function loadList() {

            <g:remoteFunction controller="student" action="listStudents" update="divLista"/>

        }

    </script>

</head>

<body>

<div id="page-body" role="main">
    <h1>Matricula</h1>

    <g:remoteLink controller="student" action="listStudents" update="divLista">Listar Alunos</g:remoteLink>


    <div id="divLista">

        <ul>

        </ul>

    </div>

    <div id="controller-list" role="navigation">
        <ul>

            <g:remoteLink controller="student" action="add" update="page-body">Cadastro de alunos</g:remoteLink>
            <br>
            <g:remoteLink controller="student" action="add" update="page-body">Cadastro de Cursos</g:remoteLink>

        </ul>
    </div>
</div>

</body>
</html>
