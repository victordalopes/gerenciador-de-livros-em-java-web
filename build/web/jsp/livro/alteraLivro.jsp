<%-- 
    Document   : alteraLivro
    Created on : 02/05/2021, 23:12:23
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Livro"%>
<%@page import="gerenciadordelivros.controles.ControleLivro"%>

<%
    String valor = request.getParameter("ID");
    Livro lSaida = null;
    
    if (valor != null) {
        int id = Integer.parseInt(request.getParameter("ID"));
        Livro lEntrada = new Livro(id);
        ControleLivro livCont = new ControleLivro();
        lSaida = livCont.buscar(lEntrada);
    }
%>

<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>ALTERAR</title>
    <body>
    <div class="container"/>
        <h1>Alterar</h1>
        <form name="altera" action="validaAlteraLivro.jsp" method="post">
            <% if (valor != null) { %>
                Titulo <input type="text" name="Titulo" value="<%=lSaida.getTitulo()%>"> <br>
                Autor <input type="text" name="Autor" value="<%=lSaida.getAutor()%>"> <br>
                Editora <input type="text" name="Editora" value="<%=lSaida.getEditora()%>"> <br>
                <input type="HIDDEN" name="ID" value="<%=lSaida.getId()%>"> <br>
            <% } else { %>
                ID <input type="text" name="ID" value=""> <br>
                Titulo <input type="text" name="Titulo" value=""> <br>
                Autor <input type="text" name="Autor" value=""> <br>
                Editora <input type="text" name="Editora" value=""> <br>
            <% } %>
            <input type="submit" name="ENTRAR" value="ENTRAR"> <br>
        </form>
    </div>
    </body>
</html>