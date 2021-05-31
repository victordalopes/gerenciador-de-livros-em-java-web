<%-- 
    Document   : validaListaLivro
    Created on : 02/05/2021, 23:38:27
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadordelivros.beans.Livro"%>
<%@page import="gerenciadordelivros.controles.ControleLivro"%>

<%
    String titulo = request.getParameter("Titulo");
    Livro lEntrada = new Livro(titulo);
    ControleLivro livCont = new ControleLivro();
    List<Livro> lsSaida = livCont.listar(lEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA LISTA</title>
    <body>
    <div class="container"/>
        <h1>VALIDA LISTA</h1>
        <% if(!(lsSaida.isEmpty())) { %>
            <% for (Livro listaLiv :lsSaida){ %>
            ID = <%=listaLiv.getId()%> | TITULO = <%=listaLiv.getTitulo()%> | AUTOR = <%=listaLiv.getAutor()%> | EDITORA = <%=listaLiv.getEditora()%> - <a href="../livro/alteraLivro.jsp?ID=<%=listaLiv.getId()%>">Altera</a> - <a href="../livro/validaExcluiLivro.jsp?ID=<%=listaLiv.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>
    </div>
    </body>
</html>