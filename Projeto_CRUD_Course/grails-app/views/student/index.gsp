<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Cadastro estudantes</title>

</head>
    <body>

        <a href="#"> Adicionar </a>

        <div id="divLista">
            <g:render template="lista" model="[student: student]"></g:render>
        </div>

        <div id="divForm"></div>

    </body>
</html>

