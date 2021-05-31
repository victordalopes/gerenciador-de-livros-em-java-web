<%-- 
    Document   : inseriEditora
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
        <form name="inseri" action="validaInseriEditora.jsp" method="post">
            Nome <input type="text" name="NOME" value=""> <br>
            Fundacao <input type="text" name="FUNDACAO" value=""> <br>
            Sede <input type="text" name="SEDE" value=""> <br>
            Cnpj <input type="text" name="CNPJ" value=""> <br>
            <input type="submit" name="ENTRAR" value="ENTRAR"> <br>
        </form>
    </div>
    </body>
</html>
