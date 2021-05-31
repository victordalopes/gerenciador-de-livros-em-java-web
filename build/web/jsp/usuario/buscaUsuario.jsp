<%-- 
    Document   : busca
    Created on : 25/04/2021, 21:22:54
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>BUSCAR</title>
    <body>
    <div class="container"/>
        <h1>Buscar</h1>
        <form name="login" action="validaBuscaUsuario.jsp" method="post">
            ID <input type="text" name="ID" value=""> <br>
            <input type="submit" name="ENTRAR" value="ENTRAR"> <br>
        </form>
    </div>
    </body>
</html>
