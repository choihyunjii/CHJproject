<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="dao.WritingDao" %>
<%@ page import="dto.Writing" %>
<html>
<head>
    <title>글 수정 폼</title>
    <link rel="stylesheet" href="update.css">
    <style> @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Montserrat:wght@800&display=swap'); </style>
</head>
<body>
<%
    String userId="such1123";
    if(session.getAttribute("userId") != null ){
        userId=(String) session.getAttribute("userId");
    }
    if (userId==null){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('로그인을하세요.')");
        script.println("location.href=login.jsp()");
        script.println("</script>");
    }

    int id=0;
    if (request.getParameter("id") != null) {
        id= Integer.parseInt(request.getParameter("id"));
    }
    if(id==0){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글 입니다.')");
        script.println("location.href=maim.jsp()");
        script.println("</script>");
    }
    WritingDao writingDao=new WritingDao();
    Writing writing=writingDao.getWriting(id);



%>
<section class="all">
    <h1>UPDATE FORM</h1>
    <section class="login-form">

        <form action="writeAction.jsp?id=<%=id%>" method="post">
            <div class="int-area">
                <input type="text" name="title" id="title"
                       autocomplete="off" required placeholder="<%=writing.getTitle()%>" maxlength="30" >
                <label for="title">TITLE</label>
            </div>
            <div class="int-area">
                <textarea type="contents" name="contents" id="contents"
                          autocomplete="off" required placeholder="<%= writing.getContents()%>" maxlength="500"></textarea>
                <label for="contents">CONTENTS</label>

            </div>
            <div class="int-area">

                <label for="upload">UPLOAD</label>
                <input type="file" id="upload" class="upload-hidden">
            </div>

            <div class="btn-area">
                <button id="btn"
                        type="submit">Update</button>
            </div>
        </form>
        <!--<div class="caption">
          <a href="">Forgot Password?</a>
        </div>-->
    </section>
</section>

</body>
</html>
