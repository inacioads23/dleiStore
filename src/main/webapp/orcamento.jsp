<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/bootstrap/css/bootstrap.min.css">

<link
	href="<%=request.getContextPath()%>/assets/css/bootstrap/css/bootstrap.min_5.3.1.css"
	rel="stylesheet" />

<link href="<%=request.getContextPath()%>/assets/css/myCss/style.css"
	rel="stylesheet" />
	
<link href="<%=request.getContextPath()%>/assets/css/myCss/form-and-query.css"
	rel="stylesheet" />

<title>DLEI Store - Orçamentos</title>

</head>

<body>
	<jsp:include page="navbar-home.jsp"></jsp:include>
	<div class="container div-container">

		<div class="page-body">
			<div class="title-form">
			<h3>Orçamento</h3>
			</div>

			<form method="post" id="formUser">

				<input type="hidden" name="acao" id="acao" value="">

				<div class="row mb-3">
					<label class="col-sm-1 col-form-label">Nome</label>
					<div class="col-sm-4">
						<input id="nome" class="form-control" type="text" name="nome"
							placeholder="Seu Nome" required="required" autofocus>
					</div>
				</div>

				<div class="row mb-3">
					<label class="col-sm-1 col-form-label">E-mail</label>
					<div class="col-sm-4">
						<input id="email" class="form-control" type="email" name="email"
							placeholder="Seu e-mail" required="required">
					</div>
				</div>

				<div class="row mb-3">
					<label class="col-sm-1 col-form-label">Telefone</label>
					<div class="col-sm-4">
						<input type="tel" name="telefone" class="form-control" placeholder="Seu telefone"
							required="required" maxlength="15" onkeyup="handlePhone(event)">

					</div>
				</div>
				
				<div class="row mb-3">
					<label class="col-sm-1 col-form-label">Orçamento</label>
					<div class="col-sm-4">
						<textarea class="form-control" name="orcamento" required="required" >
						</textarea>

					</div>
				</div>

				<div class="card-block">
					<button type="button"
						class="btn btn-primary waves-effect waves-light"
						onclick="limparForm();">Limpar</button>
					<button type="submit"
						class="btn btn-success waves-effect waves-light">Enviar</button>					
						<a href="<%= request.getContextPath() %>" class="btn btn-secondary waves-effect waves-light" role="button" >Voltar</a>
				</div>
			</form>
			<div class="form-cad-user-msg">
				<span id="msg">${msg}</span>
			</div>
		</div>

	</div>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/js/script.js "></script>

	<script type="text/javascript">
		/* permite apenas número*/
		const handlePhone = (event) => {
		  let input = event.target
		  input.value = phoneMask(input.value)
		}
		
		const phoneMask = (value) => {
		  if (!value) return ""
		  value = value.replace(/\D/g,'')
		  value = value.replace(/(\d{2})(\d)/,"($1) $2")
		  value = value.replace(/(\d)(\d{4})$/,"$1-$2")
		  return value
		}
		

		function limparForm() {
			var elementos = document.getElementById("formUser").elements; // Retorna os elementos HTML dentro do form

			for (var p = 0; p < elementos.length; p++) {
				elementos[p].value = '';
			}
		}
	</script>
</body>
<jsp:include page="footer-home.jsp"></jsp:include>
</html>