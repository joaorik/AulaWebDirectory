<%-- 
    Document   : index
    Created on : 04/05/2018, 09:35:57
    Author     : Joao Leocadio
--%>

<%@page import="java.nio.file.Files"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Criar pasta-arquivo</title>
    </head>
    <body>
        <%
            String pasta = "temp";
            File local = new File("C:/" + pasta);
        %>

        <%
            boolean arq = false;

            if (local.isDirectory()) {

                File files = new File(local + "/");
                File[] list = files.listFiles();

                if (list.length > 0) {
                    arq = true;
                } else {
                    arq = false;
                }
            }

        %>

        <% if ((local.isDirectory()) != true) { %>
        <h3>Criar pasta em C:</h3>
        <form action="createFolder.jsp" method="post">
            <p>Nome da pasta: <b>temp</b></p>
            <input type="submit" value="Criar Pasta">
        </form>
        <% } %>


        <% if (local.isDirectory()) { %>
        <form action="delFolder.jsp" method="post">
            <p>Deletar pasta em <b>C:/temp/</b>?</p>
            <input type="submit" value="Deletar Pasta">
        </form>
        <% } %>


        <% if ((local.isDirectory()) == true && arq != true) { %>
        <h3>Criar arquivo em C:/temp/</h3>
        <form action="createFile.jsp" method="post">
            <input type="submit" value="Criar Arquivo">
        </form>
        <% } %>


        <% if (arq == true) { %>
        <br><br>
        <h3>Deletar arquivo criado?</h3>
        <form action="delFile.jsp" method="post">
            <input type="submit" value="Deletar">
        </form>
        <% }%>


        <% if (arq == true) { %>
        <h3>Gravar no arquivo criado:</h3>
        <form action="recordFile.jsp" method="post">
            <textarea rows="6" cols="70" name="texto"></textarea> <br>
            <input type="submit" value="Gravar">
        </form>
        <% }%>

        <% if (arq == true) { %>
        <br><br>
        <h3>Ler arquivo</h3>
        <form action="readFile.jsp" method="post">
            <input type="submit" value="Ler">
        </form>
        <% }%>


        <% if (arq == true) { %>
        <br><br>
        <h3>Pesquisar no arquivo</h3>
        <form action="searchInFile.jsp" method="post">
            <input name="texto" placeholder="palavra"> <br><br>
            <input type="submit" value="Pesquisar">
        </form>
        <% }%>

    </body>
</html>
