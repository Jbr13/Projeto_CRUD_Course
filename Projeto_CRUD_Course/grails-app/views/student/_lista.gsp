<table>

    <tr>
        <th>Nome:</th>
        <th>Email:</th>
        <th>Telephone:</th>
        <th>Course:</th>
        <th>Status:</th>
    </tr>

    <g:each var="student" in="${student}">

        <tr>
            <th>${student.name}</th>
            <th>${student.email}</th>
            <th>${student.telephone}</th>
            <th>${student.course}</th>
            <th>${student.status}</th>

            <td>
                <a href="#">Alterar</a>
                <a href="#">Excluir</a>
            </td>
        </tr>

    </g:each>
</table>