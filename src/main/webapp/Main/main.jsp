<%--
  Created by IntelliJ IDEA.
  User: 82103
  Date: 2023-01-20
  Time: 오후 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>메인 페이지</title>
    <link rel="stylesheet" href="main.css">
</head>
<style> @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Montserrat:wght@800&display=swap'); </style>

<body>
<div class="header">
    <div class="header-title">
        <h1> CHJ</h1>
    </div>
    <div class="header-nav">
        <a href="#" class="main"><i class="fa-solid fa-house-chimney"></i> Home</a>
        <a href="#" class="Search"><i class="fa-solid fa-magnifying-glass"></i> Search</a>
        <a href="#" class="Login"><i class="fa-regular fa-user"></i> Login</a>
        <a href="#" class="Sign"> <i class="fa-regular fa-user"></i> Sign Up</a>
    </div>
</div>

<div class="main-image">
    <div class="b1"><img src="다이어리.jpg" width="700px" height="400px"></div>
    <div class="main-page">
        <h1>How was your day? &nbsp;Tell me your story</h1>

        <span class="btn">
                <button class="Writing"><h2><a class="Writinglink" href="#">Go to Write</a></h2></button>
                  <button class="Reading"><h2><a class="Readinglink" href="#">View a list of posts</a></h2></button>
           </span>
    </div>
</div>

<div class="sub-page">
    <div class="sub-page-title">
        <h1>What can I do at CHJ?</h1>
    </div>
    <div class="sub-page-main">
        <div class="sub-page1">
            <h4> 1.You can write your memories. </h4>
            <p> Write down happy and sad memories <br> and come up with your precious memories.</p>
        </div>
        <div class="sub-page2">
            <h4> 2.You can communicate with people.</h4>
            <p>Share your memories with people and leave your thoughts in the comments.</p>
        </div>
        <div class="sub-page3">
            <h4>3.You can decorate your own page.</h4>
            <p>Decorate it in your own style. The space is your own. And show it off to people.</p>
        </div>
    </div>
</div>

<div class="second-image">
    <div class="b2"><img src="일기2.jpg" width="700px" height="400px"></div>
</div>

<div class="line">
</div>
<div class="line-bottom">
    <h4>회사소개</h4>   <h4>인재채용</h4>
    <h4>인재채용</h4>
    <h4>이용약관</h4>
    <h4>개인정보처리방침</h4>
    <h4>고객센터</h4>
</div>




</body>
</html>
