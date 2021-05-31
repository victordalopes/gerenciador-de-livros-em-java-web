<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.LivroAutor"%>
<%@page import="gerenciadordelivros.controles.ControleLivroAutor"%>

<%
    int idLivro = Integer.parseInt(request.getParameter("ID_LIVRO"));
    int idAutor = Integer.parseInt(request.getParameter("ID_AUTOR"));
    String obs = request.getParameter("OBS");
    LivroAutor livaut = new LivroAutor(0,idLivro,idAutor,obs);
    ControleLivroAutor livautcont = new ControleLivroAutor();
    livaut = livautcont.inserir(livaut);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoLivroAutor.jsp";
    response.sendRedirect(url);

%>