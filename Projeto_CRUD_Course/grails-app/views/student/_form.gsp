<div id="divMensagem">


</div>

<div class="formStudentLayout">
        <g:formRemote name="registrationFormStudent" url="[controller: 'student', action: 'save']" update="divMensagem"
        onSuccess="loadList()">

                Nome: <input type="text" name="name" value="${studentAdd?.name}"/> <br />
                Email: <input type="text" name="email" value="${studentAdd?.email}"/> <br />
                Tel: <input type="text" name="telephone" value="${studentAdd?.telephone}"/> <br />
                Nome do Curso: <input type="text" name="course" value="${studentAdd?.course}"/> <br />
                Status: <input type="text" name="status" value="${studentAdd?.status}"/> <br />

                <input type="submit" name="btnSave" value="Save"/>
                <input type="button" name="btnCancel" value="Cancel"/>
                <input type="hidden" name="id" value="${studentAdd?.id}">

        </g:formRemote>
</div>