<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


</head>
<body onload='document.loginForm.username.focus();'>
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
  <div class="card">
    <div class="card-body">
<h3>S'authentifier !</h3>

<c:if test="${not empty error}"><div>${error}</div></c:if>
<c:if test="${not empty message}"><div>${message}</div></c:if>

<form name='login' action="<c:url value='/loginPage' />" method='POST'>
  <table>
    <tr>
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">UserName</label>
        <div class="col-sm-7">
          <input path="UserName" class="form-control" name="UserName"
                 placeholder="Username">
        </div>
      </div>
    </tr>

    <tr>
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password</label>
        <div class="col-sm-7">
          <input path="password" class="form-control" name="password"
                 placeholder="Password">
        </div>
      </div>
    </tr>
    <tr>
      <button type="submit"  class="btn btn-primary" value="submit">Login</button>
    </tr>
  </table>
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>

</body>
</html>