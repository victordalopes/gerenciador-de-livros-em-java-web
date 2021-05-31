<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>CONSULTAR - LIVRO - AUTOR</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR LIVRO AUTOR</h1>
       <form name="consultarLivro" action="validaConsultarRelacaoLivroAutor.jsp" method="post">
           Observação: <input type="text" name ="OBS" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
