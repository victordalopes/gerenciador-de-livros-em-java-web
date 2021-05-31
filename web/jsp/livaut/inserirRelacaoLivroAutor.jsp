<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadordelivros.beans.Livro"%>
<%@page import="gerenciadordelivros.controles.ControleLivro"%>
<%@page import="gerenciadordelivros.beans.Autor"%>
<%@page import="gerenciadordelivros.controles.ControleAutor"%>

<%
    ControleAutor autCont = new ControleAutor();
    Autor au = new Autor(0,"","","","");
    List<Autor> auto = autCont.listar(au);

    ControleLivro livCont = new ControleLivro();
    Livro livEnt = new Livro("","","");
    List<Livro> livr = livCont.listar(livEnt);

%>

<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>INSERIR LIVRO AUTOR</title>
    <body>
        <div class="container"/>
            <h1>Inserir Livro Autor</h1>
            <form name="inseriLivroAutor" action="validaRelacaoLivroAutor.jsp" method="POST">
                <table>
                    <tr>
                        <td>Autor:</td>
                        <td>
                            <select NAME ="ID_AUTOR" class="browser-default">
                                <% for (Autor aut : auto) { %>
                                    <option value="<%=aut.getId()%>"><%=aut.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Livro:</td>
                        <td>
                            <select NAME="ID_LIVRO" class="browser-default">
                                <% for (Livro liv : livr) { %>
                                    <option value="<%=liv.getId()%>"><%=liv.getTitulo()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
