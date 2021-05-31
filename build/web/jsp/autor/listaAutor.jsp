<%-- 
    Document   : listaAutor
    Created on : 02/05/2021, 23:38:05
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>LISTAR</title>
    <body>
    <div class="container"/>
        <h1>Listar</h1>
        <form name="lista" action="validaListaAutor.jsp" method="post">
            NOME <input type="text" name="NOME" value=""> <br>
            <input type="submit" name="ENTRAR" value="ENTRAR"> <br>
        </form>
    </div>
    </body>
</html>