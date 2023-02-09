<%--
  Created by IntelliJ IDEA.
  User: 82103
  Date: 2023-01-25
  Time: 오후 7:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>글 수정 폼</title>
    <link rel="stylesheet" href="update.css">
    <style> @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Montserrat:wght@800&display=swap'); </style>
</head>
<body>
<section class="all">
    <h1>UPDATE FORM</h1>

    <section class="login-form">

        <form action="writeAction.jsp" method="post">
            <div class="int-area">
                <input type="text" name="title" id="title"
                       autocomplete="off" required placeholder="Write down title(max:30)" maxlength="30" >
                <label for="title">TITLE</label>
            </div>
            <div class="int-area">
                <textarea type="contents" name="contents" id="contents"
                          autocomplete="off" required placeholder="Write down contents(max:500)" maxlength="500"></textarea>
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
