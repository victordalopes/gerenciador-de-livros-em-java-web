<%-- 
    Document   : inseriLivro
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
        <form name="inseri" action="validaInseriLivro.jsp" method="post">
            Título <input type="text" name="Titulo" value=""> <br>
            Autor <input type="text" name="Autor" value=""> <br>
            Editora <input type="text" name="Editora" value=""> <br>
            <input type="submit" name="ENTRAR" value="ENTRAR"> <br>
    </form>
    </div>
    </body>
</html>
