<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/bootstrap/css/bootstrap.min.css">

<link
	href="<%=request.getContextPath()%>/assets/css/bootstrap/css/bootstrap.min_5.3.1.css"
	rel="stylesheet" />

<link href="<%=request.getContextPath()%>/assets/css/myCss/style.css"
	rel="stylesheet" />

<title>DLEI Store - O Home da Constru��o</title>

</head>
<body>
	<jsp:include page="navbar-home.jsp"></jsp:include>
	<div class="container div-container">
		<div class="row">
			<div class="col">
				<h4>Front-End</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-3">
				<div class="card">
					<div class="card-body cards-home">
					<h4 class="card-title">Alvenaria</h4>
						<div class="">
							<img class="img-responsive cards-image" src="<%=request.getContextPath()%>/image/produto-alvenaria_200X200.jpg"
								alt="Saco de cimento">
						</div>						
						<a href="<%=request.getContextPath()%>/orcamento.jsp"
							class="btn btn-primary button-card-home">Solicite seu
							Or�amento</a>
					</div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="card">	
					<div class="card-body cards-home">
					<h4 class="card-title">Acabamento</h4>
						<div class="">
							<img class="img-responsive cards-image" src="<%=request.getContextPath()%>/image/produto-acabamento_200X200.jpg"
								alt="Saco de cimento">
						</div>						
						<a href="<%=request.getContextPath()%>/orcamento.jsp"
							class="btn btn-primary button-card-home">Solicite seu
							Or�amento</a>
					</div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="card">
					<div class="card-body cards-home">
					<h4 class="card-title">Hidr�ulica</h4>
						<div class="">
							<img class="img-responsive cards-image" src="<%=request.getContextPath()%>/image/produto-hidraulica_200X200.jpg"
								alt="Saco de cimento">
						</div>						
						<a href="<%=request.getContextPath()%>/orcamento.jsp"
							class="btn btn-primary button-card-home">Solicite seu
							Or�amento</a>
					</div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="card">
					<div class="card-body cards-home">
					<h4 class="img-responsive card-title">El�trica</h4>
						<div class="">
							<img class="cards-image" src="<%=request.getContextPath()%>/image/produto-eletrico_200X200.jpg"
								alt="Saco de cimento">
						</div>						
						<a href="<%=request.getContextPath()%>/orcamento.jsp"
							class="btn btn-primary button-card-home">Solicite seu
							Or�amento</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<jsp:include page="footer-home.jsp"></jsp:include>
</html>