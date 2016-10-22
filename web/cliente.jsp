<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <div class="container-fluid">
        <div class="row">
            <div id="sidebar-container" class="col-md-2 sidebar-container">
                <ul class="sidebar-brand">
                    <li><a href="index.jsp">Home</a></li>
                </ul>
                <ul class="sidebar-list">
                    <li class="sidebar-item active"><a href="cliente.jsp">Clientes</a></li>
                    <li class="sidebar-item"><a href="funcionario.jsp">Funcionários</a></li>
                </ul>
            </div>
            <div class="col-md-9 full-content">
                <div class="row">
                    <form>
                        <table class="table">
                            <tr>
                                <td><div class="col-md-3"></div></td>
                                <td><input class="form-control" type="text" name="txt_nome" placeholder="Nome"/></td>
                                <td><input class="form-control" type="text" name="txt_sobrenome" placeholder="Sobrenome"/></td>
                                <td><input class="form-control" type="text" name="txt_endereco" placeholder="Endereço"/></td>
                                <td><input class="form-control" type="text" name="txt_telefone" placeholder="Telefone"/></td>
                                <td><button class="btn btn-default" type="submit">Cadastrar</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
                
                <% 
                    ArrayList<Cliente> client = new ArrayList<Cliente>();
                %>
                
                <table class="table table-dashed">
                    <tr>
                        <th>#ID</th> <!-- é o ID do ArrayList --> 
                        <th>NOME</th>
                        <th>SOBRENOME</th>
                        <th>ENDEREÇO</th>
                        <th>TELEFONE</th>
                        <th></th>
                    </tr>
                    
                    <% for(Cliente cadastro: client) { %> <!-- FAÇAM DO JEITO QUE CONHECEM -->
                    <tr>
                        <td>01</td>
                        <td>Adilson</td>
                        <td>Alves</td>
                        <td>Rua Fernandinho</td>
                        <td>1334484848</td>
                        <td></td>
                    </tr>
                    <% } %>
                </table>
            </div> <!-- DIV COL 9 -->
        </div> <!-- DIV ROW -->
    </div> <!-- CONTAINER FLUID -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
