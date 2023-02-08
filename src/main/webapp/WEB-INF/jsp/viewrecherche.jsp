<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="loginPage">Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="viewpersonnes">Liste des personnes</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="personneform">Ajout</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="recherchepersonne">Recherche</a>
    </li>
  </ul>
</nav>
<div class="container">
  <h1>Liste des personnes</h1>
  <div class="card">
    <table class="table table-striped" >
      <tr><th scope="col">nom</th><th scope="col">prenom</th><th scope="col">civilite</th><th scope="col">adresse</th><th scope="col">Modifier</th><th scope="col">Supprimer</th></tr>
  <c:forEach var="personne" items="${liste}">
    <tr>
      <td>${personne.nom}</td>
      <td>${personne.prenom}</td>
      <td>${personne.civilite}</td>
      <td>${personne.adresse}</td>

      <td><a href="editpersonne/${personne.id}">Modifier</a></td>
      <td><a href="deletepersonne/${personne.id}">Supprimer</a></td>
    </tr>
  </c:forEach>
    </table></div>
 </div></body></html>