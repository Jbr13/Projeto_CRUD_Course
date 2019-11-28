<!DOCTYPE html>
<html>
<head>

    <meta name="layout" content="main"/>
    <title>Cadastro estudantes</title>
    <g:javascript library="jquery"/>

    <style type="text/css" media="screen">
    #modalBody {
        border: 2px black;
        margin: 0 auto;
        padding: 1em;
        border-radius: 0.2em;
        min-height: 30%;
    }

    .ie6 #status {
        display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
    }

    #modalBody h1 {
        font-size: 0.9em;
    }

    #modalBody li {
        line-height: 1.3;
    }

    #modalBody h1 {
        text-transform: uppercase;
        font-size: 1.1em;
    }

    #btnRegister ul {
        list-style-position: inside;
    }

    #btnRegister li {
        line-height: 1.3;
        list-style-position: inside;
        margin: 0.25em 0;
    }

    @media screen and (max-width: 480px) {
        #status {
            display: none;
        }

        #modalBody h1 {
            margin-top: 0;
        }

    }
    </style>

    <script type="text/javascript">

        function loadList() {

            <g:remoteFunction controller="student" action="listStudents" update="modalBody"/>

        }

    </script>

</head>

<body>

<div class="contentsModal">

    <g:remoteLink controller="student" action="listStudents" update="modalBody">Listar Alunos</g:remoteLink>

    <div id="modalBody" role="main">
        <ul>

        </ul>
    </div>

    <div id="btnRegister" role="navigation">
        <ul>

            <g:remoteLink controller="student" action="add" update="modalBody">Cadastro de alunos</g:remoteLink>
            <br>
            %{--<g:remoteLink controller="student" action="addCursos" update="modalBody">Cadastro de Cursos</g:remoteLink>--}%

        </ul>
    </div>

</div>
</body>
</html>
