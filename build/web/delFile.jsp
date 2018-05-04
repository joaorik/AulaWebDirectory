<%-- 
    Document   : delFile
    Created on : 04/05/2018, 14:02:00
    Author     : John Doe
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String arquivo = "arquivo.txt";
    String local = "C:/temp/" + arquivo;

    File arq = new File(local);
    if (arq.exists()) {
        arq.delete();
        out.println("Arquivo <b>" + arquivo + "</b> deletado com suceosso.<br>");
    } else {
        out.println("Nao foi possivel deletar o arquivo.<br>");
    }
    out.println("<a href='index.jsp'>Voltar</a>");
%>
