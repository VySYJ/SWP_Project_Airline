<%-- 
    Document   : Head
    Created on : Feb 15, 2023, 10:19:30 AM
    Author     : LeThiThuyVy_CE160174
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link rel="stylesheet" href="path/to/fontawesome.min.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css"
              integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
              integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
              crossorigin="anonymous" referrerpolicy="no-referrer">
        <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
        <style>
            *{
                margin: 0;
                padding: 0;
                list-style: none;
                box-sizing: border-box;
            }

            nav{
                background: #FFF9DC;
                height: 100px;
                width: 100%;
                box-shadow: 1px 1px 5px 1px;

            }
            label.logo{
                color: white;
                font-size: 35px;
                line-height: 90px;
                padding: 0px 100px;
                font-weight: bolder;
            }
            label.logo a img{
                border-radius: 20px;
            }
            nav ul{
                float: right;
                margin-right: 30px;
            }
            nav ul li{
                display: inline-block;
                line-height: 90px;
                margin: 0 30px;
            }
            nav ul li a{

                color: black;
                font-size: large;
                text-decoration: none;
            }
            a.active{
                background-color: #FF8A00;
                color: white;
                padding: 0 10px 2px;
                border-radius: 3px;
            }
            a.active:hover{
                color: black;
            }

            .listmenu a:hover{
                background-color: #feec92;
                padding: 0 10px 2px;
                border-radius: 3px;
            }
            .btncheck{
                font-size: 30px;
                color: black;
                float: right;
                line-height: 90px;
                margin-right: 30px;
                cursor: pointer;
                display: none;
            }

            #check{
                display: none;
            }
            .wellcome{
                height: 60px;
            }

            @media (max-width: 950px){
                label.logo{
                    font-size: 20px;
                }
            }
            @media (max-width: 858px){
                .btncheck{
                    display: block;
                }
                ul{
                    position: fixed;
                    width: 100%;
                    height: 100vh;
                    background-color: rgb(151, 149, 137);
                    top: 100px;
                    text-align: center;
                    left: -100%;
                    transition: all .5s;
                }
                nav ul li{
                    display: block;
                }
                nav ul li a{
                    font-size: 20px;
                    font-weight: 300;
                }
                .listmenu a:hover{
                    background: none;
                    color: rgb(255, 255, 255);
                }
                a.active{
                    background: none;
                    color: black;
                }
                #check:checked ~ ul{
                    left:  0;
                }

            }
        </style>
    </head>
    <body>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <header>
            <nav>
                <input type="checkbox" id="check">
                <label for="check" class="btncheck">
                    <i class="fas fa-bars"></i>
                </label>
                <label class="logo"><a href="<%= getServletContext().getContextPath()%>/"><img class="wellcome" src="/img/logo.png"
                                                                                               alt="Logo"></a></label>
                <ul class="listmenu">
                    <li><a href="<%= getServletContext().getContextPath()%>/">Trang chủ</a></li>
                    <!-- <li><a href="">Vé quốc tế</a></li>
                    <li><a href="">Vé nội địa</a></li>
                    -->
                    <li><a class="txtlogin" href="<%= getServletContext().getContextPath()%>/SignIn">Đăng nhập</a></li>
                    <li><a class="active" href="<%= getServletContext().getContextPath()%>/SignIn/NewAccount">Đăng ký</a></li>
                </ul>
            </nav>
        </header>
    </body>
</html>
