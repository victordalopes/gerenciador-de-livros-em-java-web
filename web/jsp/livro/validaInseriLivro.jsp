<%-- 
    Document   : validaInseriLivro
    Created on : 02/05/2021, 23:36:10
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Livro"%>
<%@page import="gerenciadordelivros.controles.ControleLivro"%>

<%
    String titulo = request.getParameter("Titulo");
    String autor = request.getParameter("Autor");
    String editora = request.getParameter("Editora");

    Livro lEntrada = new Livro(titulo,autor,editora);
    ControleLivro livCont = new ControleLivro();
    Livro lSaida = livCont.inserir(lEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA INSERIR</title>
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