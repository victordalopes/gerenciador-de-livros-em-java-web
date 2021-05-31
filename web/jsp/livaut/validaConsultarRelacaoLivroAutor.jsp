<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.Livro"%>
<%@page import="gerenciadordelivros.beans.LivroAutor"%>
<%@page import="gerenciadordelivros.controles.ControleLivroAutor"%>

<%
    String obs = request.getParameter("OBS");
    LivroAutor livaut = new LivroAutor(0,0,0,obs);
    ControleLivroAutor livautcont = new ControleLivroAutor();
    List<LivroAutor> livauto = livautcont.listar(livaut);
    Livro livTitulado = (Livro) session.getAttribute("LivroTitulado");
    String url = "ABUSCA=" + livaut.getObs() +"&ID=" ;
%>

<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>LISTA LIVROS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdLivAutor">Id</th>
                  <th data-field="IdAutor">IdAutor</th>
                  <th data-field="NomeAutor">NomeAutor</th>
                  <th data-field="IdLivro">IdLivro</th>
                  <th data-field="NomeLivro">NomeLivro</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(livauto.isEmpty())) { %>    
                <tbody>
                    <% for (LivroAutor listaLivroAutor : livauto) { %>
                        <tr>
                            <td><%=listaLivroAutor.getId()%></td>
                            <td><%=listaLivroAutor.getIdA()%></td>
                            <td><%=listaLivroAutor.getAut().getNome()%></td>
                            <td><%=listaLivroAutor.getIdL()%></td>
                            <td><%=listaLivroAutor.getLiv().getTitulo()%></td>
                            <td><%=listaLivroAutor.getObs()%></td>
                            <td><a href="excluirRelacaoLivroAutor.jsp?<%=url + listaLivroAutor.getId()%>">Excluir</a></td>
                            <td><a href="alterarRelacaoLivroAutor.jsp?<%=url + listaLivroAutor.getId()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>