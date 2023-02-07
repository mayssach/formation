<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Rechercher Personne</h1>
<form:form method="POST" action="/SpringMVCPagination/viewrecherche">
    <table >
        <tr>
            <td>Nom : </td>
            <td><form:input path="nom"  /></td>
        </tr>
        <tr>
            <td>Prenom :</td>
            <td><form:input path="prenom" /></td>
        </tr>
        <tr>
            <td>Civilite :</td> &ensp;
            <td><select name="civilite" id="civilite" path="civilite" >
                <option value=""></option>
                <option value="M.">M.</option>
                <option value="Mme">Mme</option>
                <option value="Melle">Melle</option>
            </select>
            </td>
        </tr>

        <tr>
            <td><input type="submit" value="Rechercher" /></td>
        </tr>
    </table>
</form:form>