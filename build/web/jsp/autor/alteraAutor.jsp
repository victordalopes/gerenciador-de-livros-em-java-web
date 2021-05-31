<%-- 
    Document   : alteraAutor
    Created on : 02/05/2021, 23:12:23
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Autor"%>
<%@page import="gerenciadordelivros.controles.ControleAutor"%>

<%
    String valor = request.getParameter("ID");
    Autor aSaida = null;
    
    if (valor != null) {
        int id = Integer.parseInt(request.getParameter("ID"));
        Autor aEntrada = new Autor(id);
        ControleAutor autCont = new ControleAutor();
        aSaida = autCont.buscar(aEntrada);
    }
%>

<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>ALTERAR</title>
    <body>
    <div class="container"/>
        <h1>Alterar</h1>
        <form name="altera" action="validaAlteraAutor.jsp" method="post">
            <% if (valor != null) { %>
                Nome <input type="text" name="NOME" value="<%=aSaida.getNome()%>"> <br>
                Idade <input type="text" name="IDADE" value="<%=aSaida.getIdade()%>"> <br>
                Editora <input type="text" name="EDITORA" value="<%=aSaida.getEditora()%>"> <br>
                Genero <input type="text" name="GENERO" value="<%=aSaida.getGenero()%>"> <br>
                <input type="HIDDEN" name="ID" value="<%=aSaida.getId()%>"> <br>
            <% } else { %>
                ID <input type="text" name="ID" value=""> <br>
                Nome <input type="text" name="NOME" value=""> <br>
                Idade <input type="text" name="IDADE" value=""> <br>
                Editora <input type="text" name="EDITORA" value=""> <br>
                Genero <input type="text" name="GENERO" value=""> <br>
            <% } %>
            <input type="submit" name="ENTRAR" value="ENTRAR"> <br>
        </form>
    </div>
    </body>
</html>