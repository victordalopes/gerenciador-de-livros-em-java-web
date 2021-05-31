<%-- 
    Document   : validaInseriUsuario
    Created on : 02/05/2021, 23:36:10
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Usuario"%>
<%@page import="gerenciadordelivros.controles.ControleUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String status = request.getParameter("STATUS");
    String tipo = request.getParameter("TIPO");

    Usuario uEntrada = new Usuario(login,senha,status,tipo);
    ControleUsuario usuCont = new ControleUsuario();
    Usuario uSaida = usuCont.inserir(uEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA INSERIR</title>
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