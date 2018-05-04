<%-- 
    Document   : delFolder
    Created on : 04/05/2018, 14:08:32
    Author     : John Doe
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String pasta = "temp";
    
    String local = "C:/" + pasta;
    
    File f = new File(local);
    
    if (f.exists()) {
        if (f.delete()) {
            out.println("Pasta deletada com sucesso: " + pasta + "<br>");
        } else {
            out.println("Nao foi possivel deletar a pasta.<br>");
        }
    }
    out.println("<a href='index.jsp'>Voltar</a>");
%>
