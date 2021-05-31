<%-- 
    Document   : validaListaUsuario
    Created on : 02/05/2021, 23:38:27
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadordelivros.beans.Usuario"%>
<%@page import="gerenciadordelivros.controles.ControleUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    Usuario uEntrada = new Usuario(login);
    ControleUsuario usuCont = new ControleUsuario();
    List<Usuario> usSaida = usuCont.listar(uEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA LISTA</title>
    <body>
    <div class="container"/>
        <h1>VALIDA LISTA</h1>
        <% if(!(usSaida.isEmpty())) { %>
            <% for (Usuario listaUsu :usSaida){ %>
            ID = <%=listaUsu.getId()%> | LOGIN = <%=listaUsu.getLogin()%> | SENHA = <%=listaUsu.getSenha()%> | STATUS = <%=listaUsu.getStatus()%> | TIPO = <%=listaUsu.getTipo()%> - <a href="../usuario/alteraUsuario.jsp?ID=<%=listaUsu.getId()%>">Altera</a> - <a href="../usuario/validaExcluiUsuario.jsp?ID=<%=listaUsu.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>
    </div>
    </body>
</html>