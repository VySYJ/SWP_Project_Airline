<%-- 
    Document   : EditAccount
    Created on : Feb 24, 2023, 11:28:50 PM
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
            * {
                margin: 0px;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: "Inter", Arial, Helvetica, sans-serif;
            }

            .formbold-mb-5 {
                margin-bottom: 20px;
            }

            .formbold-pt-3 {
                padding-top: 12px;
            }

            .formbold-main-wrapper {
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 48px;
                width: 100%;
            }

            .formbold-form-wrapper {
                margin: 140px auto;
                max-width: 550px;
                width: 100%;
                background: white;
                align-items: center;
                justify-content: center;
            }

            .formbold-form-label {
                display: block;
                font-weight: 500;
                font-size: 16px;
                color: #07074d;
                margin-bottom: 12px;
            }

            .formbold-form-label-2 {
                font-weight: 600;
                font-size: 20px;
                margin-bottom: 20px;
            }

            .formbold-form-input {
                width: 100%;
                padding: 12px 24px;
                border-radius: 6px;
                border: 1px solid #e0e0e0;
                background: white;
                font-weight: 500;
                font-size: 16px;
                color: #6b7280;
                outline: none;
                resize: none;
            }

            .formbold-form-input:focus {
                border-color: #6a64f1;
                box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
            }

            .formbold-btn {
                text-align: center;
                font-size: 16px;
                border-radius: 6px;
                padding: 14px 32px;
                border: none;
                font-weight: 600;
                background-color: #6a64f1;
                color: white;
                width: 100%;
                cursor: pointer;
                margin-top: 20px;
                margin-bottom: 0px;
            }

            .formbold-btn:hover {
                box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
            }

            .formbold--mx-3 {
                margin-left: -12px;
                margin-right: -12px;
            }

            .formbold-px-3 {
                padding-left: 12px;
                padding-right: 12px;
            }

            .flex {
                display: flex;
            }

            .flex-wrap {
                flex-wrap: wrap;
            }

            .w-full {
                width: 100%;
            }

            @media (min-width: 540px) {
                .sm\:w-half {
                    width: 50%;
                }
            }

            .EditAccount {
                margin: 100px 100px;
            }

            .title {
                font-weight: 700;
                color: #575DFB;
            }
            .title h2{
                margin-bottom: 60px;
                font-weight: 700;
                text-align: center;
            }
            .errormess{
                color: red;
            }
        </style>
    </head>

    <body>
        <%@include file="HeaderUser.jsp" %>
        <%   

        %>
        <div class="formbold-main-wrapper">
            <div class="formbold-form-wrapper">

                <form class="" action="/SignIn/EditAccount" method="post">
                    <div class="title">
                        <h2 class="text-align">Chỉnh Sửa Tài Khoản</h2>
                        <%String mess = (String) request.getAttribute("mess");
                            if (mess != null) {
                        %>
                        <h4 class="errormess"><%=mess%></h4>
                        <%
                        } else {
                        %>
                        <h4 class="errormess"></h4>
                        <%
                            }
                        %>
                        <input value="<%=ac.RoleID%>" type="hidden" name="txtroleid"/>
                        <input value="<%=ac.Username%>" type="hidden" name="txtusername"/>
                    </div>
                    <div class="formbold-mb-5">
                        <label for="name" class="formbold-form-label"> Tên đăng nhập </label>
                        <input value="<%=ac.Username%>" type="text" name="usernameDis" id="name" class="formbold-form-input" disabled/>
                    </div>
                    <div class="formbold-mb-5">
                        <label for="phone" class="formbold-form-label"> Email </label>
                        <input value="<%=ac.Email%>" type="email" name="txtemail" id="email" 
                               class="formbold-form-input" />
                    </div>
                    <div class="formbold-mb-5">
                        <label for="email" class="formbold-form-label"> Mật khẩu </label>
                        <input value="<%=ac.Password%>" type="password" name="txtpassword" id="password"
                               class="formbold-form-input" disabled/>
                    </div>
                    <div>
                        <button class="formbold-btn" type="submit" value="Edit" name="btnEditAc">Hoàn tất</button>
                    </div>
                </form>
            </div>
        </div>
        <%@include file="Footer.jsp" %>

    </body>
</html>
