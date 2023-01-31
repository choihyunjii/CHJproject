<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>로그인 페이지</title>
    <link rel="stylesheet" href="signup.css">
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<style> @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Montserrat:wght@800&display=swap'); </style>
<body>
<section class="login-form">
    <h1>SIGN UP</h1>
    <form action="signupAction.jsp" method="post">
        <div class="int-area">
            <input type="text" name="id" id="id"
                   autocomplete="off" required>
            <label for="id">ID</label>
        </div>
        <div class="int-area">
            <input type="password" name="password" id="password"
                   autocomplete="off" required>
            <label for="password">PASSWORD</label>
        </div>
        <div class="int-area">
            <input type="text" name="name" id="name"
                   autocomplete="off" required>
            <label for="id">NAME</label>
        </div>
        <div class="int-area">
            <input type="text" name="age" id="age"
                   autocomplete="off" required>
            <label for="id">AGE</label>
        </div>
        <div class="int-area">
            <input type="text" name="gender" id="gender"
                   autocomplete="off" required>
            <label for="id">GENDER</label>
        </div>
        <div class="int-area">
            <input type="text" name="phonenumber" id="phonenumber"
                   autocomplete="off" required>
            <label for="id">PHONENUMBER</label>
        </div>
        <div class="btn-area">
            <button id="btn"
                    type="submit">SIGN UP</button>
        </div>
    </form>
    <!--<div class="caption">
      <a href="">Forgot Password?</a>
    </div>-->
</section>

<script>
    let id = $('#id');
    let pw = $('#pw');
    let btn = $('#btn');

    $(btn).on('click', function(){
        if($(id).val() == ""){
            $(id).next('label').addClass('warning');
            setTimeout(function(){
                $('label').removeClass('warning');
            },1500);
        }
        else if($(pw).val() == ""){
            $(pw).next('label').addClass('warning');
            setTimeout(function(){
                $('label').removeClass('warning');
            },1500);
        }
    });
</script>

</body>