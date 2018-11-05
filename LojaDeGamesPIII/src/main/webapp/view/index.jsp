

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- temporario -->
        <jsp:include page="/criaCarrinho" />

        <meta charset="UTF-8">
        <title>AcaiTech Sistema - Index</title>
        <link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" />
        <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    </head>
    <body>
        <!-- Inicio Menu -->
        <nav class="navbar navbar-light bg-light">
            <div class="corpoimagem">
                <img src="${pageContext.request.contextPath}/img/logo.png"  class="imagemlogo">
            </div>


            <div class="informacoessobrefuncionario">
                <span class="nomedofuncionario">${sessionScope.getNome}</span> ●
                <span class="filialfuncionario">${sessionScope.getFilial}</span>  ●
                <span class="cargofuncionario">${sessionScope.getCargo}</span>  ●
                <span class="datafuncionario">${sessionScope.getData}</span>  
            </div>
            <form action="${pageContext.request.contextPath}/sairLogin" method="post">
                <button type="submit" class="btn btn-primary btnSair">Sair</button>
            </form>

        </nav>
        <!-- Fim Menu -->
        <!-- Inicio Carrocel -->
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="2500">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="${pageContext.request.contextPath}/img/slide1.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="${pageContext.request.contextPath}/img/slide2.jpg" alt="Second slide">
                </div>
                <div class="carousel-item" >
                    <img class="d-block w-100" src="${pageContext.request.contextPath}/img/slide3.jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!-- Inicio Separador -->
        <nav class="navbar navbar-light separadorcarrocel">
        </nav>
        <!-- Fim Separador -->

        <div class="container corpodeopcoes">
            <h3>Sistema em desenvolvimento.</h3>
            <h6><i>Opções disponiveis:</i></h6>
            <div class="row btnopcoes"><button type="button" class="btn btn-primary btnSair" onclick="window.location.href = '${pageContext.request.contextPath}/view/cadastrarProduto.jsp'">Cadastrar um produto</button></div> 
            <div class="row btnopcoes"><button type="button" class="btn btn-primary btnSair" onclick="window.location.href = '${pageContext.request.contextPath}/view/listaProduto.jsp'">Listagem de produto +(Alterar/Excluir)</button></div> 
            <div class="row btnopcoes"><button type="button" class="btn btn-primary btnSair" onclick="window.location.href = '${pageContext.request.contextPath}/view/cadastrarCliente.jsp'">Cadastrar um cliente</button></div> 
            <div class="row btnopcoes"><button type="button" class="btn btn-primary btnSair" onclick="window.location.href = '${pageContext.request.contextPath}/view/listaCliente.jsp'">Listagem de cliente +(Alterar/Excluir)</button></div> 
            <div class="row btnopcoes"><button type="button" class="btn btn-primary btnSair" onclick="window.location.href = '${pageContext.request.contextPath}/view/cadastrarFuncionario.jsp'">Cadastrar um funcionario</button></div> 
            <div class="row btnopcoes"><button type="button" class="btn btn-primary btnSair" onclick="window.location.href = '${pageContext.request.contextPath}/view/listaFuncionario.jsp'">Listagem de funcionario +(Alterar/Excluir)</button></div> 
            <div class="row btnopcoes"><button type="button" class="btn btn-primary btnSair" onclick="window.location.href = '${pageContext.request.contextPath}/view/carrinho.jsp">Pré Carrinho</button></div>
        </div>

        <!-- inicio Footer -->
        <footer class="rodape page-footer font-small blue">
            <div class="footer-copyright text-center py-3">© 2018 Copyright: [ ACAITECH SISTEMAS OPERACIONAIS LTDA 13.050.544/0001-00 ]
                <a class="suporte" href="#"> Solicitar Suporte  <img class="imagemsuporte" src="${pageContext.request.contextPath}/img/suporte.png"></a>
            </div>           
        </footer>
        <!-- Fim Footer -->

        <link type="text/css" href="${pageContext.request.contextPath}/css/script.css" rel="stylesheet" />
        <link type="text/css" href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" />
        <link type="text/css" href="${pageContext.request.contextPath}/css/menu.css" rel="stylesheet" />
        <script src="${pageContext.request.contextPath}/js/gradiente.js"></script>


        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"><img src="${pageContext.request.contextPath}/img/logo.png"  class="imagemlogomodal" style="width:20%;"> </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ${retornoMensagem}
                        
                        ++Carrinho criado!
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>

        <!--  Captura a variavel de retorno e abre modal-->
        <c:if test="${not empty retorno}">
            <script type="text/javascript">
                $("#myModal").modal();
                $('#myModal').on('hidden.bs.modal', function () {
                    window.location.href = '${pageContext.request.contextPath}/view/index.jsp'
                })
            </script>
        </c:if> 

    </body>