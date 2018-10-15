<%-- 
   Document   : produtos
   Created on : 14/10/2018, 12:07:28
   Author     : angelo.xavier
   --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>AcaiTech Sistema - Destaques</title>
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
            <span class="nomedofuncionario">Fulano de Tal</span> ●
            <span class="filialfuncionario">Filial Amazonia</span>  ●
            <span><a href="#">Sair</a></span>
         </div>
         <button type="button" class="btn btn-primary btnSair">Sair</button>
      </nav>
      <!-- Fim Menu -->
      <!-- Inicio Carrocel -->
      <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="2500">
         <div class="carousel-inner">
            <div class="carousel-item active">
               <img class="d-block w-100" src="${pageContext.request.contextPath}/img/aviso1.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
               <img class="d-block w-100" src="${pageContext.request.contextPath}/img/aviso2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item" >
               <img class="d-block w-100" src="${pageContext.request.contextPath}/img/aviso3.jpg" alt="Third slide">
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
      <!-- Inicio Menu -->
      <nav class="navbar  navbarbotoes">
         <button type="button" class="btn btn-primary btnProdutos">Produtos</button>
         <button type="button" class="btn btn-primary btnClientes">Clientes</button>
      </nav>
      <!-- Fim Menu -->
      <!-- inicio Busca jogos estoque -->
      <div class="buscajogoscorpo">
         <h3>Estoque Atual</h3>
         <form class="form-inline buscajogos">
            <input class=" form-control mr-sm-2 " type="search" placeholder="Digite o nome do jogo,fornecedor, ano de lançamento, plataforma, ..etc" aria-label="Search" style="width:90%">
            <button type="submit" class="btn btn-light">Buscar</button>
         </form>
      </div>
      <!-- fim Busca jogos estoque-->
      <!-- Fim Carrocel -->
      <div class="container">
         <table class="table table-striped">
            <thead>
               <tr>
                  <th scope="col">Produto</th>
                  <th scope="col">Preço De Venda</th>
                  <th scope="col">Preço De Custo</th>
                  <th scope="col">Fornecedor</th>
                  <th scope="col">Categoria</th>
                  <th scope="col">Quantidade em estoque</th>
                  <th scope="col">Editar</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td>Tomb Raider</td>
                  <td>145,00</td>
                  <td>124,00</td>
                  <td>GAMES BRASIL SA</td>
                  <td>Ação</td>
                  <td>25</td>
                  <td><a href="#">Editar</a></td>
               </tr>
               <tr>
                  <td>Tomb Raider</td>
                  <td>145,00</td>
                  <td>124,00</td>
                  <td>GAMES BRASIL SA</td>
                  <td>Ação</td>
                  <td>25</td>
                  <td><a href="#">Editar</a></td>
               </tr>
               <tr>
                  <td>Tomb Raider</td>
                  <td>145,00</td>
                  <td>124,00</td>
                  <td>GAMES BRASIL SA</td>
                  <td>Ação</td>
                  <td>25</td>
                  <td><a href="#">Editar</a></td>
               </tr>
               <tr>
                  <td>Tomb Raider</td>
                  <td>145,00</td>
                  <td>124,00</td>
                  <td>GAMES BRASIL SA</td>
                  <td>Ação</td>
                  <td>25</td>
                  <td><a href="#">Editar</a></td>
               </tr>
               <tr>
                  <td>Tomb Raider</td>
                  <td>145,00</td>
                  <td>124,00</td>
                  <td>GAMES BRASIL SA</td>
                  <td>Ação</td>
                  <td>25</td>
                  <td><a href="#">Editar</a></td>
               </tr>
               <tr>
                  <td>Tomb Raider</td>
                  <td>145,00</td>
                  <td>124,00</td>
                  <td>GAMES BRASIL SA</td>
                  <td>Ação</td>
                  <td>25</td>
                  <td><a href="#">Editar</a></td>
               </tr>
               <tr>
                  <td>Tomb Raider</td>
                  <td>145,00</td>
                  <td>124,00</td>
                  <td>GAMES BRASIL SA</td>
                  <td>Ação</td>
                  <td>25</td>
                  <td><a href="#">Editar</a></td>
               </tr>
               <tr>
                  <td>Tomb Raider</td>
                  <td>145,00</td>
                  <td>124,00</td>
                  <td>GAMES BRASIL SA</td>
                  <td>Ação</td>
                  <td>25</td>
                  <td><a href="#">Editar</a></td>
               </tr>
               <tr>
                  <td>Tomb Raider</td>
                  <td>145,00</td>
                  <td>124,00</td>
                  <td>GAMES BRASIL SA</td>
                  <td>Ação</td>
                  <td>25</td>
                  <td><a href="#">Editar</a></td>
               </tr>
            </tbody>
         </table>
         <div class="row">
            <button type="button" class="btn btn-light btnCadastrar" data-toggle="modal" data-target="#exampleModalLong">Cadastrar um novo produto</button>
         </div>
      </div>
      <!-- Footer -->
      <footer class="rodape page-footer font-small blue">
         <!-- Copyright -->
         <div class="footer-copyright text-center py-3">© 2018 Copyright: [ ACAITECH SISTEMAS OPERACIONAIS LTDA 13.050.544/0001-00 ]
            <a class="suporte" href="#"> Solicitar Suporte  <img class="imagemsuporte" src="${pageContext.request.contextPath}/img/suporte.png"></a>
         </div>
         <!-- Copyright -->
      </footer>
      <!-- Footer -->
      <link type="text/css" href="${pageContext.request.contextPath}/css/script.css" rel="stylesheet" />
      <link type="text/css" href="${pageContext.request.contextPath}/css/produtos.css" rel="stylesheet" />
      <link type="text/css" href="${pageContext.request.contextPath}/css/menu.css" rel="stylesheet" />
      <script src="${pageContext.request.contextPath}/js/gradiente.js"></script>
      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <form>
                     <div class="form-group">
                        <label for="exampleFormControlInput1">Email address</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                     </div>
                     <div class="form-group">
                        <label for="exampleFormControlSelect1">Example select</label>
                        <select class="form-control" id="exampleFormControlSelect1">
                           <option>1</option>
                           <option>2</option>
                           <option>3</option>
                           <option>4</option>
                           <option>5</option>
                        </select>
                     </div>
                     <div class="form-group">
                        <label for="exampleFormControlSelect2">Example multiple select</label>
                        <select multiple class="form-control" id="exampleFormControlSelect2">
                           <option>1</option>
                           <option>2</option>
                           <option>3</option>
                           <option>4</option>
                           <option>5</option>
                        </select>
                     </div>
                     <div class="form-group">
                        <label for="exampleFormControlTextarea1">Example textarea</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                     </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">Save changes</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Fim Modal -->  
   </body>