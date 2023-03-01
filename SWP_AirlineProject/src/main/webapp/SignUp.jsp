<%-- 
    Document   : SignUp
    Created on : Feb 16, 2023, 7:15:39 AM
    Author     : LeThiThuyVy_CE160174
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
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
                color:black;
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
            var patt_email = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            var patt_password = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.{6,})/;
            function CheckdkUS() {
                var username = document.getElementById("txtdkusername").value;
                document.getElementById("dkuserError").innerHTML =
                        (username.length < 6) ? "Tên đăng nhập phải có ít nhất 6 kí tự!" : "";
                return username.length >= 6;
            }

            function CheckEmail() {
                var email = document.getElementById("txtemail").value;
                document.getElementById("emailError").innerHTML =
                        patt_email.test(email) == false ? "Email không hợp lệ!" : "";
                return patt_email.test(email);
            }

            function checkPassword1() {
                var password = document.getElementById("txtdkpassword1").value;
                document.getElementById("dkpassError1").innerHTML =
                        patt_password.test(password) == false ? "Mật khẩu phải có ít nhất 6 kí tự trong "
                        + " đó phải có ít nhất 1 kí tự thường, 1 kí tự hoa và 1 kí tự số!" : "";
                return patt_password.test(password);
            }

            function checkPassword2() {
                var mk1 = document.getElementById("txtdkpassword1").value;
                var mk2 = document.getElementById("txtdkpassword2").value;
                document.getElementById("dkpassError2").innerHTML =
                        (mk1 != mk2) ?
                        "Mật khẩu không trùng khớp. Vui lòng nhập lại!" : "";
                return mk1 == mk2;
            }

            function checkAllDataDK() {
                isValidUsername = CheckdkUS();
                isValidEmail = CheckEmail();
                isValidPassword1 = checkPassword1();
                isValidPassword2 = checkPassword2();

                isValid = isValidUsername && isValidPassword1 && isValidPassword2
                        && isValidEmail;

                errorMessage = document.getElementById("allerrordk");
                if (isValid == true) {
                   // errorMessage.innerHTML = "Succesful!";
                    errorMessage.style.color = "#0f0";
                    return true;
                } else {
                    errorMessage.innerHTML = "";
                    return false;
                }
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
                    <h2 class="title mb-2 text-uppercase">Đăng Ký</h2>

                    <p class="text-black-50 mb-5">Vui lòng nhập đầy đủ thông tin bên dưới!</p>

                    <form id="form_login" method="post" action="/SignIn"
                          onsubmit="return checkAllDataDK()">
                        <div class="formsignup-username mb-4">
                            <label>Tên đăng nhập</label>
                            <input type="text" placeholder="Ví dụ: Vy123456" name="txtdkusername" id="txtdkusername"
                                   class="form-control form-control-lg" required onblur="CheckdkUS()" />
                            <p id="dkuserError"></p>
                        </div>

                        <div class="formsignup-email mb-4">
                            <label>Email</label>
                            <input type="text" placeholder="Ví dụ: Vylttce160174@fpt.edu.vn" name="txtemail" id="txtemail"
                                   class="form-control form-control-lg" required onblur="CheckEmail()" />
                            <p id="emailError"></p>
                        </div>

                        <div class="formsignup-password mb-4">
                            <label>Mật khẩu</label>
                            <input type="password" placeholder="*******" name="txtdkpassword1" id="txtdkpassword1"
                                   class="form-control form-control-lg" required onblur="checkPassword1()" />
                            <p id="dkpassError1"></p>
                        </div>
                        <div class="formsignup-cfpassword mb-4">
                            <label>Xác nhận mật khẩu</label>
                            <input type="password" placeholder="*******" name="txtdkpassword2" id="txtdkpassword2"
                                   class="form-control form-control-lg" required onblur="checkPassword2()" />
                            <p id="dkpassError2"></p>
                        </div>

                        <div class="btnSignup">
                            <button class="btnClick px-5" type="submit" placeholder="123456" name="btnSignUp">Đăng
                                ký</button>
                        </div>
                        <div>
                            <p id="allerrordk"></p>
                        </div>

                        <div class="footlogin">
                            <hr width="100%" />
                            <p class="qtion">Bạn đã có tài khoản?</p>
                            <a class="signup" href="<%= getServletContext().getContextPath()%>/SignIn">Đăng nhập ngay!</a>
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
                    <h2 class="title mb-2 text-uppercase">Đăng Ký</h2>
                    <p class="text-black-50 mb-5">Vui lòng nhập đầy đủ thông tin bên dưới!</p>

                    <form id="form_login" method="post" action="/SignIn"
                          onsubmit="return checkAllDataDK()">
                        <div class="formsignup-username mb-4">
                            <label>Tên đăng nhập</label>
                            <input type="text" placeholder="Ví dụ: Vy123456" name="txtdkusername" id="txtdkusername"
                                   class="form-control form-control-lg" required onblur="CheckdkUS()" />
                            <p id="dkuserError"></p>
                        </div>

                        <div class="formsignup-email mb-4">
                            <label>Email</label>
                            <input type="text" placeholder="Ví dụ: Vylttce160174@fpt.edu.vn" name="txtemail" id="txtemail"
                                   class="form-control form-control-lg" required onblur="CheckEmail()" />
                            <p id="emailError"></p>
                        </div>

                        <div class="formsignup-password mb-4">
                            <label>Mật khẩu</label>
                            <input type="password" placeholder="*******" name="txtdkpassword1" id="txtdkpassword1"
                                   class="form-control form-control-lg" required onblur="checkPassword1()" />
                            <p id="dkpassError1"></p>
                        </div>
                        <div class="formsignup-cfpassword mb-4">
                            <label>Xác nhận mật khẩu</label>
                            <input type="password" placeholder="*******" name="txtdkpassword2" id="txtdkpassword2"
                                   class="form-control form-control-lg" required onblur="checkPassword2()" />
                            <p id="dkpassError2"></p>
                        </div>

                        <div class="btnSignup">
                            <button class="btnClick px-5" type="submit" placeholder="123456" name="btnSignUp">Đăng
                                ký</button>
                        </div>
                        <div>
                            <p id="allerrordk"></p>
                        </div>

                        <div class="footlogin">
                            <hr width="100%" />
                            <p class="qtion">Bạn đã có tài khoản?</p>
                            <a class="signup" href="<%= getServletContext().getContextPath()%>/SignIn">Đăng nhập ngay!</a>
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
