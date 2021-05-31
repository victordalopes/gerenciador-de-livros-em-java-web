<%-- 
    Document   : login
    Created on : 28/03/2021, 22:54:10
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Usuario"%>
<%@page import="gerenciadordelivros.controles.ControleUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario uEntrada = new Usuario(login,senha);
    ControleUsuario usuCont = new ControleUsuario();
    Usuario uSaida = usuCont.validar(uEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>MENU</title>
    <body>
    <div class="container"/>
    <%if (uSaida != null) { %>
        <h1>MENU Login</h1>
        ID = <%=uSaida.getId()%> <br>
        LOGIN = <%=uSaida.getLogin()%> <br>
        SENHA = <%=uSaida.getSenha()%> <br>
        STATUS = <%=uSaida.getStatus()%> <br>
        TIPO = <%=uSaida.getTipo()%> <br>
        <h1>MENU USUÁRIO</h1>
        <a href="../usuario/inseriUsuario.jsp">Inserir</a>
        <a href="../usuario/buscaUsuario.jsp">Buscar</a>
        <a href="../usuario/alteraUsuario.jsp">Alterar</a>
        <a href="../usuario/excluiUsuario.jsp">Excluir</a>
        <a href="../usuario/listaUsuario.jsp">Listar</a><br>
        <h1>MENU LIVRO</h1>
        <a href="../livro/inseriLivro.jsp">Inserir</a>
        <a href="../livro/buscaLivro.jsp">Buscar</a>
        <a href="../livro/alteraLivro.jsp">Alterar</a>
        <a href="../livro/excluiLivro.jsp">Excluir</a>
        <a href="../livro/listaLivro.jsp">Listar</a><br>
        <h1>MENU AUTOR</h1>
        <a href="../autor/inseriAutor.jsp">Inserir</a>
        <a href="../autor/buscaAutor.jsp">Buscar</a>
        <a href="../autor/alteraAutor.jsp">Alterar</a>
        <a href="../autor/excluiAutor.jsp">Excluir</a>
        <a href="../autor/listaAutor.jsp">Listar</a><br>
        <h1>MENU EDITORA</h1>
        <a href="../editora/inseriEditora.jsp">Inserir</a>
        <a href="../editora/buscaEditora.jsp">Buscar</a>
        <a href="../editora/alteraEditora.jsp">Alterar</a>
        <a href="../editora/excluiEditora.jsp">Excluir</a>
        <a href="../editora/listaEditora.jsp">Listar</a>
        <h1>MENU LIVRO AUTOR</h1>
        <a href="../livaut/inserirRelacaoLivroAutor.jsp">Inserir</a>
        <a href="../livaut/consultarRelacaoLivroAutor.jsp">Consultar</a>
        <%} else { %>
        <h1>Usuário Inválido</h1>
    <% } %>
    </body>
</html>
