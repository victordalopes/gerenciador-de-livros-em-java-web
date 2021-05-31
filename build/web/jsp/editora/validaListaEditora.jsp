<%-- 
    Document   : validaListaEditora
    Created on : 02/05/2021, 23:38:27
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadordelivros.beans.Editora"%>
<%@page import="gerenciadordelivros.controles.ControleEditora"%>

<%
    String nome = request.getParameter("NOME");
    Editora eEntrada = new Editora(nome);
    ControleEditora ediCont = new ControleEditora();
    List<Editora> edSaida = ediCont.listar(eEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA LISTA</title>
    <body>
    <div class="container"/>
        <h1>VALIDA LISTA</h1>
        <% if(!(edSaida.isEmpty())) { %>
            <% for (Editora listaEdi :edSaida){ %>
            ID = <%=listaEdi.getId()%> | NOME = <%=listaEdi.getNome()%> | FUNDACAO = <%=listaEdi.getFundacao()%> | SEDE = <%=listaEdi.getSede()%> | CNPJ = <%=listaEdi.getCnpj()%> - <a href="../editora/alteraEditora.jsp?ID=<%=listaEdi.getId()%>">Altera</a> - <a href="../editora/validaExcluiEditora.jsp?ID=<%=listaEdi.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>
    </div>
    </body>
</html>