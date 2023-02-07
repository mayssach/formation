<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Ajouter personne</h1>
<form:form method="post" action="save">
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
                <option value="M.">M.</option>
                <option value="Mme">Mme</option>
                <option value="Melle">Melle</option>
               </select>
            </td>
        </tr>
        <tr>
            <td>Adresse :</td>
            <td><form:input path="adresse" /></td>
        </tr>
        <tr>
            <td>Date de naissance :</td>
            <td><form:input type="date" path="dateNaissance" /></td>
        </tr>
        <tr>
            <td> </td>
            <td><input type="submit" value="Save" /></td>
        </tr>
    </table>
</form:form>
