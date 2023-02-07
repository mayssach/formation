<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Edit Personne</h1>
<form:form method="POST" action="/SpringMVCCRUDSimple/editsave">
    <table >
        <tr>
            <td></td>
            <td><form:hidden  path="id" /></td>
        </tr>
        <tr>
            <td>Nom : </td>
            <td><form:input path="nom"  /></td>
        </tr>
        <tr>
            <td>Prenom :</td>
            <td><form:input path="prenom" /></td>
        </tr>
        <tr>
            <td>Civilite :</td>
            <td><form:input path="civilite" /></td>
        </tr>
        <tr>
            <td>Adresse :</td>
            <td><form:input path="adresse" /></td>
        </tr>
        <tr>
            <td>Date de naissance :</td>
            <td><form:input path="dateNaissance" /></td>
        </tr>

        <tr>
            <td> </td>
            <td><input type="submit" value="Edit Save" /></td>
        </tr>
    </table>
</form:form>