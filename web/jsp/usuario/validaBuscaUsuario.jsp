<%--
    Document   : validaBuscaUsuario
    Created on : 25/04/2021, 21:27:33
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Usuario"%>
<%@page import="gerenciadordelivros.controles.ControleUsuario"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Usuario uEntrada = new Usuario(id);
    ControleUsuario usuCont = new ControleUsuario();
    Usuario uSaida = usuCont.buscar(uEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA BUSCA</title>
    <body>
    <div class="container"/>
        <h1>Valida</h1>
        ID = <%=uSaida.getId()%> <br>
        LOGIN = <%=uSaida.getLogin()%> <br>
        SENHA = <%=uSaida.getSenha()%> <br>
        STATUS = <%=uSaida.getStatus()%> <br>
        TIPO = <%=uSaida.getTipo()%> <br>
    </div>
    </body>
</html>
