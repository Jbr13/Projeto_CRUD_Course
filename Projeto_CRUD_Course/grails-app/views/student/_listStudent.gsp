<g:if test="${studentsList?.size() > 0}">

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
                    <g:remoteLink controller="student" action="editStudent" update="modalBody"
                                  id="${studentsInstance.id}">Edit</g:remoteLink>
                    &nbsp;
                    <g:remoteLink controller="student" action="deleteStudent" update="modalBody"
                                  id="${studentsInstance.id}">Delete</g:remoteLink>
                </td>
            </tr>

        </g:each>
    </table>
</g:if>
<g:else>
    <h5>Nao ha estudantes cadastrados.<h5>
</g:else>