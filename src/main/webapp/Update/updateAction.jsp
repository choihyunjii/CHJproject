<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="dao.UpdateDao" %>
<%@ page import="dto.Update

<%
    request.setCharacterEncoding("UTF-8");
    String title = null;
    String contents = null;
    String upload = "upload";


    if(request.getParameter("title")!=null){
        title=(String) request.getParameter("title");
    }

    if(request.getParameter("contents")!=null){
        contents=(String) request.getParameter("contents");
    }



    System.out.println(title+contents);

    UpdateDao updateDao= new UpdateDao();
    Update update = new Update(title,contents,upload);
    int insertCount = updateDao.addUser(update);
    System.out.println(insertCount);

    if(insertCount == 1){
        PrintWriter script=response.getWriter();
        script.println("<script>");
        script.println("alert('글을 수정하였습니다')");
        script.println("location.href='http://localhost:8080/CHJproject_war_exploded/Login/main.jsp'");
        script.println("</script>");
        script.close();
        return;
    }
%>