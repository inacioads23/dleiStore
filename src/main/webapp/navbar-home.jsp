<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Alterna navega��o">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a href="<%= request.getContextPath() %>"> <img class="img-fluid" src="<%= request.getContextPath() %>/assets/images/logo.png"
				alt="Logo" /></a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="<%= request.getContextPath() %>">Home <span class="sr-only">(P�gina atual)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/orcamento.jsp">Or�amento</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/login.jsp">�rea Exclusiva</a>
      </li>
    </ul>
  </div>
</nav>