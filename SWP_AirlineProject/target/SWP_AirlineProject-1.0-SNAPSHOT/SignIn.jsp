<%-- 
    Document   : Login
    Created on : Feb 16, 2023, 7:15:19 AM
    Author     : LeThiThuyVy_CE160174
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/LoginSignUp.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <style>

            .card {
                align-items: center;
                margin: auto;
                border: none;
                margin-top: 100px;
                margin-bottom: 100px;
            }

            .card-body {
                border-radius: 10px;
                border: solid #575DFB;
            }

            .title {
                font-weight: 700;
                color: #575DFB;
            }

            .btnLogin {
                text-align: center;
            }

            .btnClick {
                background-color: #575DFB;
                color: white;
                border-radius: 0.5rem;
                border: solid #575DFB;
                height: 50px;
                margin-top: 20px;
                font-weight: 700;
            }

            input[type=text] {
                margin: 8px 0;
                border: 2px solid #575DFB;
                font-size: small;
            }

            input[type=password] {
                margin: 8px 0;
                border: 2px solid #575DFB;
                font-size: small;
            }

            hr {
                background-color: rgb(255, 0, 0);
            }

            .footlogin {
                text-align: center;
            }

            .signup {
                font-size: 20px;
                color: #575DFB;
                font-weight: 700;
            }

            .btnSignup {
                text-align: center;
            }

            #userError {
                font-size: small;
                color: rgb(255, 0, 0);
                font-style: italic;
            }

            #passError {
                font-size: small;
                color: rgb(255, 0, 0);
                font-style: italic;
            }
            form p{
                font-size: small;
                color: rgb(255, 0, 0);
                font-style: italic;
            }
            .qtion{
                color: #000;
            }
            #dkpasswordError1{
                width: 30%;
                word-break: break-all;
            }
            .Errormess{
                color: red;
            }
        </style>
    </head>

    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>

        <script>
            function CheckUS() {
                var username = document.getElementById("username").value;
                document.getElementById("userError").innerHTML =
                        (username.length < 6) ? "Tên đăng nhập phải có ít nhất 6 kí tự!" : "";
                return username.length >= 6;
            }
            function CheckPS() {
                var password = document.getElementById("password").value;
                document.getElementById("passError").innerHTML =
                        (password.length < 6 || password.length > 20) ? "Mật khẩu phải có ít nhất 6 - 20 kí tự!" : "";
                return password.length >= 6 && password.length <= 20;
            }
            function checkAllDataLogin() {
                isValidUsername = CheckUS();
                isValidPassword = CheckPS();
                isValid = isValidUsername && isValidPassword;

                errorMessage = document.getElementById("allerror");
                if (isValid == true) {
                    //errorMessage.innerHTML = "Succesful!";
                    errorMessage.style.color = "#0f0";
                    return true;
                } else {
                    errorMessage.innerHTML = "";
                    return false;
                }
                //return inValid; 
            }
        </script>
        <%
            String mess = (String) request.getAttribute("mess");
            if (mess != null) {
        %>
        <%@include file="Header.jsp" %>
        <div class="card col-12 col-md-8 col-lg-6 col-xl-5 h-60 border-0" style="border-radius: 1rem;">
            <div class="card-body p-5">
                <div class="mb-md-5 mt-md-4 pb-5">
                    <p class="text-danger-50 mb-5 Errormess"><%=mess%></p>
                    <h2 class="title mb-2 text-uppercase">Đăng Nhập</h2>
                    <p class="text-black-50 mb-5">Vui lòng nhập đầy đủ thông tin bên dưới!</p>


                    <form id="form_login" method="post" action="/SignIn" 
                          onsubmit="return checkAllDataLogin()">
                        <div class="form-username mb-4">
                            <label>Tên đăng nhập</label>
                            <input type="text" placeholder="Ví dụ: Vy123456" name="username" id="username"
                                   class="form-control form-control-lg" required onblur="CheckUS()"/>
                            <p id="userError"></p>
                        </div>

                        <div class="form-password mb-4">
                            <label>Mật khẩu</label>
                            <input type="password" placeholder="*******" name="password" id="password"
                                   class="form-control form-control-lg" required onblur="CheckPS()"/>
                            <p id="passError"></p>
                        </div>

                        <div class="btnLogin">
                            <button class="btnClick px-5" type="submit" value="Login" name="btnLogin">Đăng nhập</button>
                        </div>
                        <div>
                            <p id="allerror"></p>
                        </div>

                        <div class="footlogin">
                            <hr width="100%" />
                            <p class="qtion">Bạn chưa có tài khoản?</p>
                            <a class="signup" href="<%= getServletContext().getContextPath()%>/SignIn/NewAccount">Đăng ký ngay!</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="Footer.jsp" %>
        <%
        } else {
            
        %>    
        <%@include file="Header.jsp" %>
        <div class="card col-12 col-md-8 col-lg-6 col-xl-5 h-60 border-0" style="border-radius: 1rem;">
            <div class="card-body p-5">
                <div class="mb-md-5 mt-md-4 pb-5">
                    <h2 class="title mb-2 text-uppercase">Đăng Nhập</h2>
                    <p class="text-black-50 mb-5">Vui lòng nhập đầy đủ thông tin bên dưới!</p>

                    <form id="form_login" method="post" action="/SignIn/HomeUser" 
                          onsubmit="return checkAllDataLogin()">
                        <div class="form-username mb-4">
                            <label>Tên đăng nhập</label>
                            <input type="text" placeholder="Ví dụ: Vy123456" value="" name="username" id="username" value=""
                                   class="form-control form-control-lg" required onblur="CheckUS()"/>
                            <p id="userError"></p>
                        </div>

                        <div class="form-password mb-4">
                            <label>Mật khẩu</label>
                            <input type="password" placeholder="*******" name="password" id="password"
                                   class="form-control form-control-lg" required onblur="CheckPS()"/>
                            <p id="passError"></p>
                        </div>

                        <div class="btnLogin">
                            <button class="btnClick px-5" type="submit" value="Login" name="btnLogin">Đăng nhập</button>
                        </div>
                        <div>
                            <p id="allerror"></p>
                        </div>

                        <div class="footlogin">
                            <hr width="100%" />
                            <p class="qtion">Bạn chưa có tài khoản?</p>
                            <a class="signup" href="<%= getServletContext().getContextPath()%>/SignIn/NewAccount">Đăng ký ngay!</a>
                        </div>

                    </form>
                </div>
            </div>
        </div>
        <%@include file="Footer.jsp" %>

        <%
            }
        %>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
        <script src="js/Jquery.js"></script>
    </body>
</html>
