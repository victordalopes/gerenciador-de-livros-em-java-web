<%-- 
    Document   : inseriAutor
    Created on : 02/05/2021, 23:35:46
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>INSERIR</title>
    <body>
    <div class="container"/>
        <h1>Inserir</h1>
        <form name="inseri" action="validaInseriAutor.jsp" method="post">
            Nome <input type="text" name="NOME" value=""> <br>
            Idade <input type="text" name="IDADE" value=""> <br>
            Editora <input type="text" name="EDITORA" value=""> <br>
            Genero <input type="text" name="GENERO" value=""> <br>
            <input type="submit" name="ENTRAR" value="ENTRAR"> <br>
        </form>
    </div>
    </body>
</html>
