<%-- 
    Document   : validaExcluiAutor
    Created on : 02/05/2021, 23:30:26
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Autor"%>
<%@page import="gerenciadordelivros.controles.ControleAutor"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Autor aEntrada = new Autor(id);
    ControleAutor autCont = new ControleAutor();
    Autor aSaida = autCont.excluir(aEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>VALIDA EXCLUI</title>
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
