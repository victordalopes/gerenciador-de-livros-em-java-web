<%-- 
    Document   : validaListaAutor
    Created on : 02/05/2021, 23:38:27
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadordelivros.beans.Autor"%>
<%@page import="gerenciadordelivros.controles.ControleAutor"%>

<%
    String nome = request.getParameter("NOME");
    Autor aEntrada = new Autor(nome);
    ControleAutor autCont = new ControleAutor();
    List<Autor> auSaida = autCont.listar(aEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA LISTA</title>
    <body>
    <div class="container"/>
        <h1>VALIDA LISTA</h1>
        <% if(!(auSaida.isEmpty())) { %>
            <% for (Autor listaAut :auSaida){ %>
            ID = <%=listaAut.getId()%> | NOME = <%=listaAut.getNome()%> | IDADE = <%=listaAut.getIdade()%> | EDITORA = <%=listaAut.getEditora()%> | GENERO = <%=listaAut.getGenero()%> - <a href="../autor/alteraAutor.jsp?ID=<%=listaAut.getId()%>">Altera</a> - <a href="../autor/validaExcluiAutor.jsp?ID=<%=listaAut.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>
    </div>
    </body>
</html>