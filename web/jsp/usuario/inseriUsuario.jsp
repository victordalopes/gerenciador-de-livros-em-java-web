<%-- 
    Document   : inseriUsuario
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
        <h1>Insesir</h1>
        <form name="inseri" action="validaInseriUsuario.jsp" method="post">
            Login <input type="text" name="LOGIN" value=""> <br>
            Senha <input type="password" name="SENHA" value=""> <br>
            Status <input type="text" name="STATUS" value=""> <br>
            Tipo <input type="text" name="TIPO" value=""> <br>
            <input type="submit" name="ENTRAR" value="ENTRAR"> <br>
        </form>
    </div>
    </body>
</html>
