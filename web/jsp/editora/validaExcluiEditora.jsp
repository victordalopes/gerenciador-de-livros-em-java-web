<%-- 
    Document   : validaExcluiEditora
    Created on : 02/05/2021, 23:30:26
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Editora"%>
<%@page import="gerenciadordelivros.controles.ControleEditora"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Editora eEntrada = new Editora(id);
    ControleEditora ediCont = new ControleEditora();
    Editora eSaida = ediCont.excluir(eEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA EXCLUI</title>
    <body>
    <div class="container"/>
        <h1>Valida</h1>
        ID = <%=eSaida.getId()%> <br>
        NOME = <%=eSaida.getNome()%> <br>
        FUNDACAO = <%=eSaida.getFundacao()%> <br>
        SEDE = <%=eSaida.getSede()%> <br>
        CNPJ = <%=eSaida.getCnpj()%> <br>
    </div>
    </body>
</html>
