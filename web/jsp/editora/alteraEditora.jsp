<%-- 
    Document   : alteraEditora
    Created on : 02/05/2021, 23:12:23
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Editora"%>
<%@page import="gerenciadordelivros.controles.ControleEditora"%>

<%
    String valor = request.getParameter("ID");
    Editora eSaida = null;
    
    if (valor != null) {
        int id = Integer.parseInt(request.getParameter("ID"));
        Editora eEntrada = new Editora(id);
        ControleEditora ediCont = new ControleEditora();
        eSaida = ediCont.buscar(eEntrada);
    }
%>

<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>ALTERAR</title>
    <body>
    <div class="container"/>
        <h1>Alterar</h1>
        <form name="altera" action="validaAlteraEditora.jsp" method="post">
            <% if (valor != null) { %>
                Nome <input type="text" name="NOME" value="<%=eSaida.getNome()%>"> <br>
                Fundacao <input type="text" name="FUNDACAO" value="<%=eSaida.getFundacao()%>"> <br>
                Sede <input type="text" name="SEDE" value="<%=eSaida.getSede()%>"> <br>
                Cnpj <input type="text" name="CNPJ" value="<%=eSaida.getCnpj()%>"> <br>
                <input type="HIDDEN" name="ID" value="<%=eSaida.getId()%>"> <br>
            <% } else { %>
                ID <input type="text" name="ID" value=""> <br>
                Nome <input type="text" name="NOME" value=""> <br>
                Fundacao <input type="text" name="FUNDACAO" value=""> <br>
                Sede <input type="text" name="SEDE" value=""> <br>
                Cnpj <input type="text" name="CNPJ" value=""> <br>
            <% } %>
            <input type="submit" name="ENTRAR" value="ENTRAR"> <br>
        </form>
    </div>
    </body>
</html>