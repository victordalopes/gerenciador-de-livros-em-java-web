<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadordelivros.beans.LivroAutor"%>
<%@page import="gerenciadordelivros.controles.ControleLivroAutor"%>
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
    
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    LivroAutor livAut = new LivroAutor(id,0,0,"");
    ControleLivroAutor livAutCont = new ControleLivroAutor();
    livAut = livAutCont.buscar(livAut);
    String abusca = request.getParameter("ABUSCA");
%>

<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>ALTERAR - LIVRO AUTOR</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - LIVRO AUTOR</h1>
        <form name="alterarLivroAutor" action="validaAlterarRelacaoLivroAutor.jsp" method="post">
            <table>
                <tr>
                    <td>Livro:</td>
                        <td>
                            <select NAME="ID_LIVRO" class="browser-default">
                                <% for (Livro liv : livr) { %>
                                    <% if( liv.getId() == livAut.getIdL()) { %>
                                        <option selected value="<%=liv.getId()%>"><%=liv.getTitulo()%></option>
                                    <% } else { %>
                                        <option value="<%=liv.getId()%>"><%=liv.getTitulo()%></option>
                                    <% } %>
                                <% } %>
                            </select> <%-- no código acima, getLogin foi trocado por getTitulo. --%>
                        </td>
                </tr>
                <tr>
                        <td>Autor:</td>
                        <td>
                            <select NAME ="ID_AUTOR" class="browser-default">
                                <% for (Autor aut : auto) { %>
                                    <% if( aut.getId()== livAut.getIdA()) { %>
                                        <option selected value="<%=aut.getId()%>"><%=aut.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=aut.getId()%>"><%=aut.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value="<%=livAut.getObs()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=livAut.getId()%>"> <br>
            <input type="HIDDEN" name="ABUSCA" value="<%=abusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>