<%-- 
    Document   : validaExcluiUsuario
    Created on : 02/05/2021, 23:30:26
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Usuario"%>
<%@page import="gerenciadordelivros.controles.ControleUsuario"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Usuario uEntrada = new Usuario(id);
    ControleUsuario usuCont = new ControleUsuario();
    Usuario uSaida = usuCont.excluir(uEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA EXCLUI</title>
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
