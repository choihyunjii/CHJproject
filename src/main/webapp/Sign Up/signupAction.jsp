<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dto.SignUp" %>
<%@ page import="dao.SignUpDao" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.PrintWriter" %>


<%
  request.setCharacterEncoding("UTF-8");

  String id = null;
  String password = null;
  String name = null;
  String age = null;
  String gender= null;
  String phonenumber = null;
  String etc="etc";

    if(request.getParameter("id")!=null){
        id=(String) request.getParameter("id");
    }
    if(request.getParameter("name")!=null){
        name=(String) request.getParameter("name");
    }
    if(request.getParameter("password") != null){
        password=(String) request.getParameter("password");
    }
    if(request.getParameter("age") != null){
        age=(String) request.getParameter("age");
    }
    if(request.getParameter("gender")!=null){
        gender=(String) request.getParameter("gender");
    }
    if(request.getParameter("phonenumber")!=null){
        phonenumber=(String) request.getParameter("phonenumber");
    }

    System.out.println(id+name+password+age+gender+phonenumber);


    SignUpDao signUpDao = new SignUpDao();
    SignUp signUp = new SignUp(id,name,password,age,gender,phonenumber,etc);
    int insertCount= signUpDao.addUser(signUp);
    System.out.println(insertCount);

    if(insertCount == 1){


        PrintWriter script=response.getWriter();
        script.println("<script>");
        script.println("alert('회원가입에 성공했습니다')");
        script.println("location.href='http://localhost:8080/CHJproject_war_exploded/Login/login.jsp'");
        script.println("</script>");
        script.close();
        return;
    }


%>