<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadordelivros.beans.LivroAutor"%>
<%@page import="gerenciadordelivros.controles.ControleLivroAutor"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    LivroAutor livAut = new LivroAutor(id);
    ControleLivroAutor livAutCont = new ControleLivroAutor();
    livAut = livAutCont.excluir(livAut);
    
    String abusca = request.getParameter("ABUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoLivroAutor.jsp?OBS=" + abusca;
    response.sendRedirect(url);

%>

