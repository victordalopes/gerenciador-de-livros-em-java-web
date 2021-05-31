<%-- 
    Document   : validaAlteraEditora
    Created on : 02/05/2021, 23:26:17
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Editora"%>
<%@page import="gerenciadordelivros.controles.ControleEditora"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    String nome = request.getParameter("NOME");
    String fundacao = request.getParameter("FUNDACAO");
    String sede = request.getParameter("SEDE");
    String cnpj = request.getParameter("CNPJ");

    Editora eEntrada = new Editora(id,nome,fundacao,sede,cnpj);
    ControleEditora ediCont = new ControleEditora();
    Editora eSaida = ediCont.alterar(eEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA ALTERA</title>
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
