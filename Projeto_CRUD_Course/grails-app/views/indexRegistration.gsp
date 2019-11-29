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

    #btnListStudent {
        margin: 0 0 0 2%;
    }

    /*MODAL REGISTRO DE ESTUDANTES*/

    #bgModalRegisterStudent {
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        background-color: rgba(0,0,0,.8);
        position: fixed;
        display: none;
    }

    #bgModalRegisterStudent:target {
        display: block;
    }

    #bgModalRegisterStudent:target ~ .modalRegisterStundent{
        top: 150px;
        transition: all .3s;
        transition-delay: .2s;
    }

    .modalRegisterStundent {
        width: 720px;
        height: 405px;
        position: absolute;
        margin-left: -360px;
        left: 50%;
        background-color: white;
    }

    #btnCloseModalRegisterStudent {

        color: #FFFFFF;
        font-family: arial, helvetica, verdana, sans-serif;
        text-decoration: none;
        font-size: 35px;
        position: absolute;
        background-color: black;
        width: 40px;
        height: 40px;
        text-align: center;
        right: 0;

    }

    #btnCloseModalRegisterStudent:hover {
        opacity: .6;
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

    <button id="btnListStudent">
        <g:remoteLink controller="student" action="listStudents" update="modalBody">Listar</g:remoteLink>
    </button>

    <button id="btnRegistrationStudent">
        <g:remoteLink controller="student" action="add" update="modalBody">Novo Aluno</g:remoteLink>
    </button>

    <div id="modalBody" role="main">
        <ul>

        </ul>
    </div>

</div>
<a href="#bgModalRegisterStudent">TESTE</a>
<div id="bgModalRegisterStudent"></div>

<div class="modalRegisterStundent">

    <a href="#" id="btnCloseModalRegisterStudent">X</a>

</div>

</body>
</html>
