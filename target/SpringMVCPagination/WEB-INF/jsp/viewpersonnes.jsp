    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

	<h1>Employees List</h1>
	<table border="2" width="70%" cellpadding="2">
	<tr><th>Id</th><th>Name</th><th>Salary</th><th>Designation</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach var="personne" items="${list}">
    <tr>
    <td>${personne.id}</td>
    <td>${personne.nom}</td>
    <td>${personne.prenom}</td>
    <td>${personne.civilite}</td>
    <td>${personne.adresse}</td>
    <td>${personne.dateNaissance}</td>

        <td><a href="editpersonne/${personne.id}">Edit</a></td>
    <td><a href="deletepersonne/${personne.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="personneform">Add New Employee</a>