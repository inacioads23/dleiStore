<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<jsp:include page="head.jsp"></jsp:include>
<body>
	<!-- Pre-loader start -->
	<jsp:include page="theme-loader.jsp"></jsp:include>
	<!-- Pre-loader end -->

	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<jsp:include page="navbar.jsp"></jsp:include>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<jsp:include page="navbar-main-menu.jsp"></jsp:include>

					<div class="pcoded-content">
						<!-- Page-header start -->
						<jsp:include page="page-header.jsp"></jsp:include>
						<!-- Page-header end -->

						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<div class="row">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-block">
														<h4 class="sub-title">Relatório de usuário</h4>

														<form
															action="<%=request.getContextPath()%>/ServletUsuarioController"
															method="get" id="formUser">
															<input type="hidden" name="acao" value="imprimirRelatorioUser">
															
															<div class="form-row align-items-center">
																<div class="col-auto">
																	<label class="sr-only" for="dataInicial">Data Inicial</label>
																	<input value="${dataInicial}" type="text" class="form-control mb-2" id="dataInicial" name="dataInicial">
																</div>
																<div class="col-auto">
																	<label class="sr-only" for="dataFinal">Data	Final</label>
																	<input value="${dataFinal}" type="text" class="form-control mb-2" id="dataFinal" name="dataFinal">
																</div>
																<div class="col-auto">
																	<button type="submit" class="btn btn-primary mb-2">Imprimir Relatório</button>
																</div>
															</div>
														</form>
														
														<div style="height: 300px; overflow: scroll;">										
															<table class="table" id="tabelaResultadosView">
																<thead>
																	<tr>
																		<th scope="col">ID</th>
																		<th scope="col">Nome</th>
																		<th scope="col">E-mail</th>
																		<th scope="col">CPF</th>
																		<th scope="col">Telefone</th>
																	</tr>
																</thead>
																<tbody>
																<c:forEach items="${listaUser}" var='ml'>
																	<tr>
																	<td><c:out value="${ml.id}"> </c:out></td>
																	<td><c:out value="${ml.nome}"> </c:out></td>
																	<td><c:out value="${ml.email}"> </c:out></td>
																	<td><c:out value="${ml.cpf}"> </c:out></td>
																	<td><c:out value="${ml.telefone}"> </c:out></td>
																	</tr>
																</c:forEach>			
																</tbody>
															</table>					
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!--  project and team member end -->
								</div>
							</div>
							<!-- Page-body end -->
						</div>
						<div id="styleSelector"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="javaScriptFile.jsp"></jsp:include>
	
	<script type="text/javascript">		
		
		/* Faz a tradução do calendário*/
		$( function() {			  
			  $("#dataInicial").datepicker({
				    dateFormat: 'dd/mm/yy',
				    dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado'],
				    dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
				    dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
				    monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
				    monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
				    nextText: 'Próximo',
				    prevText: 'Anterior'
				});
		});
		
		/* Faz a tradução do calendário*/
		$( function() {			  
			  $("#dataFinal").datepicker({
				    dateFormat: 'dd/mm/yy',
				    dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado'],
				    dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
				    dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
				    monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
				    monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
				    nextText: 'Próximo',
				    prevText: 'Anterior'
				});
		});
	</script>
	
</body>
</html>
