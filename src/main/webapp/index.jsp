<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DLEI - Home</title>

<!--${pageContext.request.contextPath} <- Express Language -->
<!--${pageContext.request.contextPath} trabalha a partir do context da nossa aplicação pasta: "webapp" Path: "dlei-4cats-dev" -->
<link
	href="${pageContext.request.contextPath}/resources/css-js-jq/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css-js-jq/myCss/style.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/css-js-jq/jquery-3.6.0-dist/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/css-js-jq/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Página alterada - Aula 18
	<jsp:include page="/public/public-nav.jsp" />-->


	<jsp:include page="auth/auth-generica-nav.jsp" />

	<div class="container div-container">
		<div class="row">
			<div class="col">
				<h2>Home Default</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">CADASTRO DE USUÁRIO</h4>
						<a href="${pageContext.request.contextPath}/public?action=new"
							class="btn btn-primary button-card-home">Novo Usuário</a>
					</div>
				</div>
			</div>			
		</div>
	</div>
</body>
<footer>
	<jsp:include page="/public/public-footer.jsp" />
</footer>
</html>