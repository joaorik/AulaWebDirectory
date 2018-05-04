<%-- 
    Document   : createFile
    Created on : 04/05/2018, 10:20:27
    Author     : Joao Leocadio
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String arquivo = "arquivo.txt";
    String local = "C:/temp/" + arquivo;

    File arq = new File(local);
    if (!arq.exists()) {
        arq.createNewFile();
        out.println("Arquivo <b>" + arquivo + "</b> criado com suceosso.<br>");
    } else {
        out.println("Nao foi possivel criar o arquivo.<br>");
    }
    out.println("<a href='index.jsp'>Voltar</a>");
%>
    
