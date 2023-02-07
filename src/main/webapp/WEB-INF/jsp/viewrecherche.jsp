<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Liste des personnes</h1>
<table border="2" width="70%" cellpadding="2">
  <tr><th>nom</th><th>prenom</th><th>civilite</th><th>adresse</th><th>Edit</th><th>Delete</th></tr>
  <c:forEach var="personne" items="${liste}">
    <tr>
      <td>${personne.nom}</td>
      <td>${personne.prenom}</td>
      <td>${personne.civilite}</td>
      <td>${personne.adresse}</td>

      <td><a href="editpersonne/${personne.id}">Edit</a></td>
      <td><a href="deletepersonne/${personne.id}">Delete</a></td>
    </tr>
  </c:forEach>
</table>
<br/>
<a href="personneform">Ajouter personne</a>