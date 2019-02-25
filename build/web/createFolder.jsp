<%-- 
    Document   : createFolder
    Created on : 04/05/2018, 10:00:26
    Author     : Joao
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String pasta = "temp";
    
    String local = "C:/" + pasta;
    
    File f = new File(local);
    
    if (!f.exists()) {
        if (f.mkdirs()) {
            out.println("Pasta criada com sucesso: " + pasta + "<br>");
        } else {
            out.println("Nao foi possivel criar a pasta ou já existe.<br>");
        }
    }
    out.println("<a href='index.jsp'>Voltar</a>");
%>
