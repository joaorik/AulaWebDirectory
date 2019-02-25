<%-- 
    Document   : recordFile
    Created on : 04/05/2018, 11:13:21
    Author     : Joao
--%>

<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String texto = request.getParameter("texto");
    String arquivo = "arquivo.txt";
    String local = "C:/temp/" + arquivo;

    try {
        FileWriter grava =  new FileWriter(local, true);
        PrintWriter saida = new PrintWriter(grava);
        
        saida.println(texto);
        saida.close();

        out.println("Dados armazenados com sucesso!<br>");
    } catch (IOException er) {
        out.println("Falha ao gravar o arquivo." + er.toString());
    }
    out.println("<a href='index.jsp'>Voltar</a>");
%>
