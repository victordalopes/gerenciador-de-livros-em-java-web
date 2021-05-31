<%--
    Document   : validaBuscaLivro
    Created on : 25/04/2021, 21:27:33
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Livro"%>
<%@page import="gerenciadordelivros.controles.ControleLivro"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Livro lEntrada = new Livro(id);
    ControleLivro livCont = new ControleLivro();
    Livro lSaida = livCont.buscar(lEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA BUSCA</title>
    <body>
    <div class="container"/>
        <h1>Valida</h1>
        ID = <%=lSaida.getId()%> <br>
        TITULO = <%=lSaida.getTitulo()%> <br>
        AUTOR = <%=lSaida.getAutor()%> <br>
        EDITORA = <%=lSaida.getEditora()%> <br>
    </div>
    </body>
</html>
