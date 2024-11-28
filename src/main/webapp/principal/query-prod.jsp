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

    <!-- class pcoded start -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <!-- class pcoded-container navbar-wrapper start -->
        <div class="pcoded-container navbar-wrapper">
            <jsp:include page="navbar.jsp"></jsp:include>

            <!-- class pcoded-main-container start -->
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <jsp:include page="navbar-main-menu.jsp"></jsp:include>

                    <!-- class pcoded-content start -->
                    <div class="pcoded-content">
                        <!-- Page-header start -->
                        <jsp:include page="page-header.jsp"></jsp:include>
                        <!-- Page-header end -->

                        <!-- class pcoded-inner-content start -->
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <!-- class page-wrapper start -->
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <!-- class row start -->
                                        <div class="row">                                        
                                            <!-- class col-sm-12 start -->
                                            <div class="col-sm-12">                                            
                                                 <!-- class card start -->
                                                <div class="card">
                                                    <!-- class card-block start -->
                                                    <div class="card-block">
                                                        <h3>Consulta de Produto</h3>
                                                        
                                                        <form id="formConsulta" action="${pageContext.request.contextPath}/ServletProdutoController" method="get">
												            <div class="form-group">
												                
												                <label for="prodBusca">Nome do Produto:</label>
												                <input type="text" class="form-control" id="prodBusca" name="prodBusca" placeholder="Digite o nome do produto" required>
												            
												            <input type="hidden" name="acao" value="buscarProdAjax">
												            <button type="submit" class="btn btn-primary">Consultar</button>
												            </div>
												        </form>
													        <hr>
													        <h3 id="totalResultados">Resultados encontrados: 0</h3>
												        <table class="table table-bordered" id="tabelaResultados">
												            <thead>
												                <tr>
												                    <th>ID</th>
												                    <th>Nome do Produto</th>
												                    <th>Ação</th>
												                </tr>
												            </thead>
												            <tbody>
												            <!-- Resultados da busca serão inseridos aqui via AJAX -->
												            </tbody>
												        </table>
                                                    <!-- class card-block end -->    
                                                    </div>
                                                <!-- class card end -->    
                                                </div>
                                             <!-- class col-sm-12 end -->
                                            </div>
                                        <!-- class row end -->
                                        </div>
                                    <!-- Page-body end -->
                                    </div>                                    
                                <!-- class page-wrapper start -->
                                </div>  
                            <!-- Main-body end -->                              
                            </div> 
                        <!-- class pcoded-inner-content end -->                           
                        </div>
                    <!-- class pcoded-content end -->
                    </div>
                </div>
            <!-- class pcoded-main-container start -->
            </div>
        <!-- class pcoded-container navbar-wrapper end -->
        </div>
    <!-- class pcoded end -->
    </div>

    <jsp:include page="javaScriptFile.jsp"></jsp:include>   
    
    <canvas width="600" height="400"></canvas>
    <script>    
        $(document).ready(function() {
            $('#formConsulta').on('submit', function(event) {
                event.preventDefault(); // Evita o envio padrão do formulário
                buscarProduto(); // Chama a função de busca via AJAX
            });
            
            function buscarProduto() {
                var prodBusca = $('#prodBusca').val().trim();

                if (prodBusca !== '') {
                    var urlAction = $('#formConsulta').attr('action');

                    $.ajax({
                        method: 'get',
                        url: urlAction,
                        data: { prodBusca: prodBusca, acao: 'buscarProdAjax' },
                        success: function(response) {
                            try {
                                console.log('Resposta recebida:', response);
                                
                                // Certifique-se de que a resposta é realmente um JSON
                                if (typeof response === "string") {
                                    try {
                                        response = JSON.parse(response);
                                    } catch (e) {
                                        console.error('Erro ao parsear JSON:', e);
                                        alert('Erro ao processar os dados recebidos.');
                                        return;
                                    }
                                }

                                console.log('Dados JSON:', response);
                                $('#tabelaResultados > tbody > tr').remove();

                                if (response.length > 0) {
                                    response.forEach(produto => {
                                        console.log(`Produto ID: ${produto.id}`);
                                        console.log(`Nome do Produto: ${produto.produto}`);

                                        $('#tabelaResultados > tbody').append(`
                                            <tr>
                                                <td>${produto.id}</td>
                                                <td>${produto.produto}</td>
                                                <td><button onclick="verEditar(${produto.id})" class="btn btn-info">Ver</button></td>
                                            </tr>
                                        `);
                                    });

                                    $('#totalResultados').text('Resultados encontrados: ' + response.length);
                                } else {
                                    $('#totalResultados').text('Nenhum resultado encontrado.');
                                }
                            } catch (error) {
                                console.error('Erro ao processar os dados recebidos:', error);
                                alert('Erro ao processar os dados recebidos.');
                            }
                        }
                    }).fail(function(xhr, status, errorThrown) {
                        alert('Erro ao buscar produto: ' + xhr.responseText);
                        console.error('Erro na requisição AJAX:', status, errorThrown);
                    });
                } else {
                    alert('Por favor, insira um valor válido na busca.');
                }
            }



        });

        function verEditar(id) {
            var urlAction = $('#formConsulta').attr('action');
            window.location.href = urlAction + '?acao=buscarEditar&id=' + id;
        }
    </script>
    
</body>
</html>
