<%-- 
    Document   : alteraUsuario
    Created on : 02/05/2021, 23:12:23
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Usuario"%>
<%@page import="gerenciadordelivros.controles.ControleUsuario"%>

<%
    String valor = request.getParameter("ID");
    Usuario uSaida = null;
    
    if (valor != null) {
        int id = Integer.parseInt(request.getParameter("ID"));
        Usuario uEntrada = new Usuario(id);
        ControleUsuario usuCont = new ControleUsuario();
        uSaida = usuCont.buscar(uEntrada);
    }
%>

<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>ALTERAR</title>
    <body>
    <div class="container"/>
        <h1>Alterar</h1>
        <form name="altera" action="validaAlteraUsuario.jsp" method="post">
            <% if (valor != null) { %>
                Login <input type="text" name="LOGIN" value="<%=uSaida.getLogin()%>"> <br>
                Senha <input type="password" name="SENHA" value="<%=uSaida.getSenha()%>"> <br>
                Status <input type="text" name="STATUS" value="<%=uSaida.getStatus()%>"> <br>
                Tipo <input type="text" name="TIPO" value="<%=uSaida.getTipo()%>"> <br>
                <input type="HIDDEN" name="ID" value="<%=uSaida.getId()%>"> <br>
            <% } else { %>
                ID <input type="text" name="ID" value=""> <br>
                Login <input type="text" name="LOGIN" value=""> <br>
                Senha <input type="password" name="SENHA" value=""> <br>
                Status <input type="text" name="STATUS" value=""> <br>
                Tipo <input type="text" name="TIPO" value=""> <br>
            <% } %>
            <input type="submit" name="ENTRAR" value="ENTRAR"> <br>
        </form>
    </div>
    </body>
</html>