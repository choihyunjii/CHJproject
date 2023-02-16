<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="dao.WritingDao" %>
<%@ page import="dto.Writing" %>

<%
  request.setCharacterEncoding("UTF-8");
  Writing writing1=new Writing();
  int id=writing1.getId()+1;
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

  WritingDao writingDao= new WritingDao();
  Writing writing = new Writing(title,contents,upload);
  int insertCount = writingDao.addUser(writing);
  System.out.println(insertCount);

  if(insertCount == 1){
    PrintWriter script=response.getWriter();
    script.println("<script>");
    script.println("alert('글을 작성하였습니다')");
    script.println("location.href='http://localhost:8080/CHJproject_war_exploded/Login/main.jsp'");
    script.println("</script>");
    script.close();
    return;
  }
%>