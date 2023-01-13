<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>로그인 페이지</title>
    <link rel="stylesheet" href="login.css">
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<style> @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Montserrat:wght@800&display=swap'); </style>
<body>
<section class="login-form">
    <h1>LOGO DESIGN</h1>
    <form action="">
        <div class="int-area">
            <input type="text" name="id" id="id"
                   autocomplete="off" required>
            <label for="id">USER NAME</label>
        </div>
        <div class="int-area">
            <input type="password" name="pw" id="pw"
                   autocomplete="off" required>
            <label for="pw">PASSWORD</label>
        </div>
        <div class="btn-area">
            <button id="btn"
                    type="submit">LOGIN</button>
        </div>
    </form>
    <div class="caption">
        <a href="">Forgot Password?</a>
    </div>
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
