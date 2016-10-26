<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.ads.classes.Dados"%>
<%@page import="br.com.fatecpg.ads.classes.Fornecedor"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedor - Cadastro</title>
        <script src="js/jquery.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/main.css"/>
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Roboto" rel="stylesheet">
        <script src="js/main.js"></script>
    </head>
<body>
    <% 
        Fornecedor forn = new Fornecedor ();
        if (request.getParameter("in") != null){
            //INCLUIR
            forn.setNome(request.getParameter("txt_nome"));
            forn.setRazaoSocial(request.getParameter("txt_social"));
            forn.setCnpj (request.getParameter("txt_cnpj"));
            forn.setEmail(request.getParameter("txt_email"));
            forn.setTelefone (request.getParameter("txt_telefone"));
            forn.setEndereço(request.getParameter("txt_endereco"));
            
            Dados.getFornecedor().add(forn);
            response.sendRedirect(request.getRequestURI());
        }
        if (request.getParameter("ex") != null) {
            //EXCLUIR
            Dados.getFornecedor().remove(Integer.parseInt(request.getParameter("id")));
            
            response.sendRedirect(request.getRequestURI());
        }
        
        if (request.getParameter("ed") != null) {
            //EDITAR
            int idForn = Integer.parseInt(request.getParameter("id"));
            Fornecedor novoForn = new Fornecedor();
            novoForn.setNome(request.getParameter("txt_novo_nome"));
            novoForn.setRazaoSocial(request.getParameter("txt_novo_social"));
            novoForn.setCnpj(request.getParameter("txt_novo_cnpj"));
            novoForn.setEmail(request.getParameter("txt_novo_email"));
            novoForn.setTelefone(request.getParameter("txt_novo_tel"));
            novoForn.setEndereço(request.getParameter("txt_novo_endereco"));
            
            Dados.getFornecedor().set(idForn, novoForn);
            response.sendRedirect(request.getRequestURI());
        }
    %>
    <div class="container-fluid">
        <div class="row">
            <div id="sidebar-container" class="col-md-2 sidebar-container">
                <ul class="sidebar-brand">
                    <li><a href="index.html">Home</a></li>
                </ul>
                <ul class="sidebar-list">
                    <li class="sidebar-item"><a href="cliente.jsp">Clientes</a></li>
                    <li class="sidebar-item active"><a href="fornecedor.jsp">Fornecedor</a></li>
                </ul>
            </div>
            <div class="col-md-9 full-content">
                <div class="row">
                    <form>
                        <table class="table">
                            <tr>
                                <td><div class="col-md-3"></div></td>
                                <td><input class="form-control" type="text" name="txt_nome" placeholder="Nome"/></td>
                                <td><input class="form-control" type="text" name="txt_social" placeholder="Razão Social"/></td>
                                <td><input class="form-control" type="text" name="txt_cnpj" placeholder="CNPJ"/></td>
                                <td><input class="form-control" type="text" name="txt_email" placeholder="Email"/></td>
                                <td><input class="form-control" type="text" name="txt_telefone" placeholder="Telefone"/></td>
                                <td><input class="form-control" type="text" name="txt_endereco" placeholder="Endereço"/></td>
                                <td><button class="btn btn-default" type="submit" name="in" value="1">Cadastrar</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <table class="table">
                    <tr>
                        <th>#ID</th> <!-- é o ID do ArrayList -->
                        <th>NOME</th>
                        <th>RAZÃO SOCIAL</th>
                        <th>CNPJ</th>
                        <th>EMAIL</th>
                        <th>TELEFONE</th>
                        <th>ENDEREÇO</th>
                        <th colspan="2"></th>
                    </tr>
                    
                    <% for(Fornecedor fr: Dados.getFornecedor()) { %> <!-- FAÇAM DO JEITO QUE CONHECEM -->
                    <tr>
                        <% int id = Dados.getFornecedor().indexOf(fr); %>
                        <td><%= id %></td>
                        <td><%= fr.getNome() %></td>
                        <td><%= fr.getRazaoSocial() %></td>
                        <td><%= fr.getCnpj() %></td>
                        <td><%= fr.getEmail() %></td>
                        <td><%= fr.getTelefone() %></td>
                        <td><%= fr.getEndereço() %></td>
                        <td>
                            <input type="hidden" name="id" value="<%= id %>"/>
                            <button type="submit" class="btn btn-success" name="ed" value="1">Editar</button>
                        </td>
                        <td>
                            <input type="hidden" name="id" value="<%= id %>"/>
                            <button type="submit" class="btn btn-danger" name="ex" value="1">Excluir</button>
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
