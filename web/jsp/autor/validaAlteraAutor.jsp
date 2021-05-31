<%-- 
    Document   : validaAlteraAutor
    Created on : 02/05/2021, 23:26:17
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Autor"%>
<%@page import="gerenciadordelivros.controles.ControleAutor"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    String nome = request.getParameter("NOME");
    String idade = request.getParameter("IDADE");
    String editora = request.getParameter("EDITORA");
    String genero = request.getParameter("GENERO");

    Autor aEntrada = new Autor(id,nome,idade,editora,genero);
    ControleAutor autCont = new ControleAutor();
    Autor aSaida = autCont.alterar(aEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA ALTERA</title>
    <body>
    <div class="container"/>
        <h1>Valida</h1>
        ID = <%=aSaida.getId()%> <br>
        NOME = <%=aSaida.getNome()%> <br>
        IDADE = <%=aSaida.getIdade()%> <br>
        EDITORA = <%=aSaida.getEditora()%> <br>
        GENERO = <%=aSaida.getGenero()%> <br>
    </div>
    </body>
</html>
