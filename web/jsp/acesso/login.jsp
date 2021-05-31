<%-- 
    Document   : login
    Created on : 26/04/2021, 14:15:24
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>LOGIN</title>
    <body>
    <div class="container"/>
        <h1>Login</h1>
        <form name="login" action="menu.jsp" method="post">
            Login <input type="text" name="LOGIN" value=""> <br>
            Senha <input type="password" name="SENHA" value=""> <br>
            <input type="submit" name="ENTRAR" value="ENTRAR"> <br>
        </form>
    </div>
    </body>
</html>
