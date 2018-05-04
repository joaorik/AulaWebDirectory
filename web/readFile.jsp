<%-- 
    Document   : readFile
    Created on : 04/05/2018, 11:22:53
    Author     : Joao Leocadio
--%>

<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String arquivo = "arquivo.txt";
            String local = "C:/temp/" + arquivo;
            
            try {
                File file = new File(local);
                BufferedReader ler = new BufferedReader(new FileReader(file));
                StringBuffer texto = new StringBuffer();
                String all;
                
                while ((all = ler.readLine()) != null) {
                    texto.append(all);
                    texto.append("\n");
                }
                ler.close();
                
                out.println("Dados no arquivo: <b>" + arquivo + "</b><br>");
                
        %>
        <textarea rows="6" cols="70"><% out.println(texto.toString()); %></textarea> <br>
        <%
            } catch (IOException er) {
                out.println("Nao possivel ler o arquivo.<br>");
            }
            out.println("<a href='index.jsp'>Voltar</a>");
        %>
        
    </body>
</html>
