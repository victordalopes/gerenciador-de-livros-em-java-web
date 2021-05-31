<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.LivroAutor"%>
<%@page import="gerenciadordelivros.controles.ControleLivroAutor"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idLivro = Integer.parseInt(request.getParameter("ID_LIVRO"));
    int idAutor = Integer.parseInt(request.getParameter("ID_AUTOR"));
    String obs = request.getParameter("OBS");
    String abusca = request.getParameter("ABUSCA");
    LivroAutor livaut = new LivroAutor(id,idLivro,idAutor,obs);
    ControleLivroAutor livautcont = new ControleLivroAutor();
    livaut = livautcont.alterar(livaut);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoLivroAutor.jsp?OBS=" + abusca;
    response.sendRedirect(url);
%>    
    
    