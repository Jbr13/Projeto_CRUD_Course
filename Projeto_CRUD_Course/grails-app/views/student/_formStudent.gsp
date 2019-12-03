<head>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'formStudent.css')}" type="text/css">

</head>

<div id="divMensagem">

</div>

<div class="gridFormStudentLayout">

    <g:formRemote name="registrationFormStudent" url="[controller: 'student', action: 'save']" update="bodyListStudent"
                  onSuccess="loadList()">

        <label>Nome:
            <input type="text" class="name" value="${studentAdd?.name}"/> <br/>
        </label>
        <label>Email:
            <input type="text" class="email" value="${studentAdd?.email}"/> <br/>
        </label>
        <label>Telefone:
            <input type="text" class="telephone" value="${studentAdd?.telephone}"/> <br/>
        </label>
        <label>Nome do Curso:
            <input type="text" class="course" value="${studentAdd?.course}"/> <br/>
        </label>
        <label>Status:
            <input type="text" class="status" value="${studentAdd?.status}"/> <br/>
        </label>

        <div class="buttonsFormStudent">
            <input type="hidden" name="id" value="${studentAdd?.id}">
            <input type="submit" name="btnSave" value="Save"/>
            <input type="submit" name="btnCancel" value="Cancel"/>
        </div>

    </g:formRemote>

</div>