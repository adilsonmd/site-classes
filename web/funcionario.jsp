<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.ads.classes.Funcionario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Funcionario - Cadastro</title>
        <script src="js/jquery.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/main.css"/>
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Roboto" rel="stylesheet">
        <script src="js/main.js"></script>
    </head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div id="sidebar-container" class="col-md-2 sidebar-container">
                <ul class="sidebar-brand">
                    <li><a href="index.html">Home</a></li>
                </ul>
                <ul class="sidebar-list">
                    <li class="sidebar-item"><a href="cliente.jsp">Clientes</a></li>
                    <li class="sidebar-item active"><a href="funcionario.jsp">Funcionários</a></li>
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
                                <td><button class="btn btn-default" type="submit">Cadastrar</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
                
                <% 
                    ArrayList<Funcionario> func = new ArrayList<Funcionario >();
                %>
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
                    
                    <% //for() { %> <!-- FAÇAM DO JEITO QUE CONHECEM -->
                    <tr>
                        <td>01</td>
                        <td>Arthur</td>
                        <td>Blanco</td>
                        <td>Rua Will Smith</td>
                        <td>1.420,60</td>
                        <td><a href="?ed=1&id=<%= //arrayList id %>" class="btn btn-success">Editar</a></td>
                        <td><a href="?ex=1&id=<%= //arraylist id%>" class="btn btn-danger">Excluir</a></td>
                    </tr>
                    <% //} %>
                </table>
                
            </div> <!-- DIV COL 9 -->
        </div> <!-- DIV ROW -->
    </div> <!-- CONTAINER FLUID -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
