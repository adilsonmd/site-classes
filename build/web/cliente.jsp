<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.ads.classes.Dados"%>
<%@page import="br.com.fatecpg.ads.classes.Cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente - Cadastros</title>
        <script src="js/jquery.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/main.css"/>
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Roboto" rel="stylesheet">
        <script src="js/main.js"></script>
    </head>
<body>
    <%
        Cliente client = new Cliente();
        
        if(request.getParameter("in") != null) {
            client.setNome(request.getParameter("txt_nome"));
            client.setRg(request.getParameter("txt_rg"));
            client.setCpf(request.getParameter("txt_cpf"));
            client.setEmail(request.getParameter("txt_email"));
            client.setTelefone(request.getParameter("txt_telefone"));
            client.setEndereço(request.getParameter("txt_endereco"));
            
            Dados.getCliente().add(client);
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("ex") != null) {
            //EXCLUIR
            //id=2 & ex=1
            Dados.getCliente().remove(Integer.parseInt(request.getParameter("id")));
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("ed") != null) {
            //EDITAR
            //id=2 & ed=1
            int idCliente = Integer.parseInt(request.getParameter("id"));
            Cliente novoCliente = new Cliente();
            novoCliente.setNome(request.getParameter("txt_novo_nome"));
            novoCliente.setRg(request.getParameter("txt_novo_rg"));
            novoCliente.setCpf(request.getParameter("txt_novo_cpf"));
            novoCliente.setEmail(request.getParameter("txt_novo_email"));
            novoCliente.setTelefone(request.getParameter("txt_novo_tel"));
            novoCliente.setEndereço(request.getParameter("txt_novo_endereco"));
            
            Dados.getCliente().set(idCliente, novoCliente);
            response.sendRedirect(request.getRequestURI());
        }
    %>
    <div class="container-fluid">
        <div class="row">
            <div id="sidebar-container" class="col-md-2 sidebar-container">
                <ul class="sidebar-brand">
                    <a class="sidebar-brand" href="index.html">CADAS<b id="verde">TRON</b></a>
                </ul>
                <ul class="sidebar-list">
                    <li class="sidebar-item"><a href="index.html">Home</a></li>
                    <li class="sidebar-item active"><a href="cliente.jsp">Clientes</a></li>
                    <li class="sidebar-item"><a href="fornecedor.jsp" data-transition="slideup">Fornecedor</a></li>
                </ul>
            </div>
            <div class="col-md-9 full-content conteudo">
                
                
                <div class="row add">
                    <center><h4>Adicionar Cliente</h4></center>
                    <form method="POST" id="form-incluir">
                        <table class="table">
                            <tr>
                                <td><div class="col-md-3"></div></td>
                                <td><input class="form-control" type="text" name="txt_nome" placeholder="Nome"/></td>
                                <td><input class="form-control" type="text" name="txt_cpf" placeholder="CPF"/></td>
                                <td><input class="form-control" type="text" name="txt_rg" placeholder="RG"/></td>
                                <td><input class="form-control" type="email" name="txt_email" placeholder="Email"/></td>
                                <td><input class="form-control" type="text" name="txt_telefone" placeholder="Telefone"/></td>
                                <td><input class="form-control" type="text" name="txt_endereco" placeholder="Endereço"/></td>
                                <td><button class="btn btn-default btn-cadastrar" type="submit" name="in" value="1">Cadastrar</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
                
                <table class="table table-dashed">
                    <tr>
                        <th>#ID</th> <!-- é o ID do ArrayList --> 
                        <th>NOME</th>
                        <th>CPF</th>
                        <th>RG</th>
                        <th>EMAIL</th>
                        <th>TELEFONE</th>
                        <th>ENDEREÇO</th>
                        <th colspan="2">Ações</th>
                    </tr>
                    
                    <% for (Cliente cl: Dados.getCliente()){ %>
                    <tr>
                        <% int id = Dados.getCliente().indexOf(cl); %>
                        <td><%= id %></td>
                        <td><%= cl.getNome() %></td>
                        <td><%= cl.getRg() %></td>
                        <td><%= cl.getCpf() %></td>
                        <td><%= cl.getEmail() %></td>
                        <td><%= cl.getTelefone() %></td>
                        <td><%= cl.getEndereço() %></td>
                        <td>
                            <form id="form-editar">
                                <input type="hidden" name="id" value="<%= id %>"/>
                                <%@include file="modal_cliente.jsp" %>
                            </form>
                        </td>
                        <td>
                            <form>
                                <input type="hidden" name="id" value="<%= id %>"/>
                                <button type="submit" class="btn btn-danger" name="ex" value="1">Excluir</button>
                            </form>
                        </td>
                    </tr>
                    <% } %>
                </table>
            </div> <!-- DIV COL 9 -->
        </div> <!-- DIV ROW -->
    </div> <!-- CONTAINER FLUID -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
