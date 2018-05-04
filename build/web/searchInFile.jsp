<%-- 
    Document   : inFile
    Created on : 04/05/2018, 12:04:22
    Author     : Joao Leocadio
--%>

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
            String palavra = request.getParameter("texto");
            String local = "C:/temp/" + arquivo;
            
            try {
                BufferedReader ler = new BufferedReader(new FileReader(local));
                String lin;
                
                int n = 1;
                int pos = -1;
                
                while ((lin = ler.readLine()) != null) {
                    pos = lin.indexOf(palavra);
                    
                    if (pos >= 0) {
                        out.println("<p>Palavra: <b>" + palavra + "</b> encontrada na linha " + n + "</p>");
                        break;
                    }
                    n++;
                        
                }
                if (pos == -1) {
                    out.println("<p>Palavra nao encontrada no arquivo.</p>");
                }
                ler.close();
            } catch (IOException er) {
                out.println("Falha na leitura dos dados.");
            }
            out.println("<a href='index.jsp'>Voltar</a>");
        %>
    </body>
</html>
