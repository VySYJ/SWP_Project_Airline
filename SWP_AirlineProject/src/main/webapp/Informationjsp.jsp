<%-- 
    Document   : Informationjsp
    Created on : Feb 16, 2023, 9:16:30 AM
    Author     : The Lu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Information</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="style.css">

    </head>

    <body>
        <style>
            h1{
                color: rgba(230, 16, 16, 0.964);
                background-color:rgb(235, 174, 157);
                text-align:center;
                margin-left: 450px;
                padding: 10px;
                width: 600px;
                border: 1px;
                border-radius: 30px;
            }

            .Go .Go-1,td,th{
                border-bottom: 1px solid black;
                border-collapse:collapse;
                text-align: left;
            }

            .Go .Go-1{
                width: 800px;
                margin: auto;
                margin-top: 20px;
                margin-bottom: 10px;
                background-color: rgb(222, 214, 214);
                border: 1px solid black;

            }

            .return .return-1,td,th{
                border-bottom: 1px solid black;
                border-collapse:collapse;
                text-align: left;
            }

            .return .return-1{
                width: 800px;
                margin: auto;
                margin-top: 20px;
                margin-bottom: 10px;
                background-color: rgb(222, 214, 214);
                border: 1px solid black;
            }
            .Go .text1{

                color:white;
                background-color: rgb(99, 161, 223);
                width: 70px;
                margin: 30px 0 -10px 350px;
                padding: 10px;
                border: 1px ;
                border-radius: 10px;
            }

            .return .text2{
                color:white;
                background-color: rgb(99, 161, 223);
                width: 70px;
                margin: 30px 0 30px 350px;
                padding: 10px;
                border: 1px ;
                border-radius: 10px;
            }
            .btn{
                background-color:  rgb(16, 234, 12);
                color: white;
                padding: 10px;
                border: none;
                border-radius: 5px;
            }
            .authen-form{
                border: 1px solid black;
                margin: 30px 40% 0px 40% ;
                width: 20%;

            }

            .authen-form_Container{
                padding: 10px;
            }

            .authen-form_group{
                margin-bottom: 20px;

            }

            .authen-form_input{
                width: 100%;
            }

            .btn{
                margin: 20px 0 50px 0;
                cursor: pointer;
            }

            .authen-form_control{
                display: flex;
                justify-content: center;
            }
        </style>
        <div class="Content">

            <h1>XÁC NHẬN VÀ THANH TOÁN</h1>

            <h3 style="margin: 0 0 10px 350px;">Thông tin về:</h3>
            <div class="Go">

                <p class="text1">Chuyến đi</p>
                <table class="Go-1">
                    <tr>
                        <td colspan="2">Từ: TP Hồ Chí Minh</td>
                        <td colspan="1">Đến: Hà Nội</td>
                        <td colspan="2">Hạng: VietnameAirline</td>
                    </tr>

                    <tr>
                        <td colspan="2">12:00, 25/03/2023</td>
                        <td colspan="1">2:00,25/03/2023</td>
                        <td colspan="2">Hạng vé:P</td>
                    </tr>

                    <tr>
                        <td colspan="2">Sân bay: TanSonNhat</td>
                        <td colspan="1">Sân bay: NoiBai</td>
                        <td colspan="2">Chuyến bay:VN204</td>
                    </tr>
                    <tr>
                        <th>Hành Khách</th>
                        <th>Số lượng</th>
                        <th>Giá</th>
                        <th>Thuế & Phí</th>
                        <th> Tổng Cộng</th>

                    </tr> <br>

                    <tr>
                        <td>Người lớn</td>
                        <td>1</td>
                        <td>599.000</td>
                        <td>750.000</td>
                        <td>1.349.000 VND</td>
                    </tr>

                    <tr>
                        <td>Trẻ em</td>
                        <td>1</td>
                        <td>539.000</td>
                        <td>750.000</td>
                        <td>1.289.000 VND</td>
                    </tr>
                </table>

                <h2 style="color:red;margin: 10px 20px 0 350px">Tổng Cộng: 2.638.000 VND</h2>
            </div>
            <div class="return">
                <p class="text2">Chuyến về</p>

                <table class="return-1">

                    <tr>
                        <td colspan="2">Từ: Hà Nội</td>
                        <td colspan="1">Đến: TP Hồ Chí Minh</td>
                        <td colspan="2">Hạng: VietnameAirline</td>
                    </tr>

                    <tr>
                        <td colspan="2">12:00, 29/03/2023</td>
                        <td colspan="1">2:00, 29/03/2023</td>
                        <td colspan="2">Hạng vé:P</td>
                    </tr>

                    <tr>
                        <td colspan="2">Sân bay: TanSonNhat</td>
                        <td colspan="1">Sân bay: NoiBai</td>
                        <td colspan="2">Chuyến bay:VN204</td>
                    </tr>
                    <tr>
                        <th>Hành Khách</th>
                        <th>Số lượng</th>
                        <th>Giá</th>
                        <th>Thuế & Phí</th>
                        <th> Tổng Cộng</th>
                    </tr>

                    <tr>
                        <td>Người lớn</td>
                        <td>1</td>
                        <td>599.000</td>
                        <td>750.000</td>
                        <td>1.349.000 VND</td>
                    </tr>

                    <tr>
                        <td>Trẻ em</td>
                        <td>1</td>
                        <td>539.000</td>
                        <td>750.000</td>
                        <td>1.289.000 VND</td>
                    </tr>

                </table>
                <h2 style="color:red;margin: 10px 20px 0 350px">Tổng Cộng: 2.638.000 VND</h2>
            </div>

            <h4 style="margin-left: 250px;">Xác nhận thông tin khách hàng:</h3>
        </div>

        <div class="authen-form">
            <div class="authen-form_Container">
                <div class="authen-form_header">
                    <h2 class="authen-form_heading">Thông tin liên hệ</h2>
                </div>

                <div class="authen-form_form ">
                    <div class="authen-form_group">
                        <lable class="authen-form_lable" style="font-size: 20px;">Họ và tên</lable>
                        <input type="text" class="authen-form_input" id="fullname" name="fullname"
                               placeholder="VD: Nguyễn Thế Lữ" required>
                    </div>

                    <div class="authen-form_group">
                        <lable class="authen-form_lable" style="font-size: 20px;">Ngày sinh</lable> <br>
                        <input type="date" class="authen-form_input" id="birthday" name="birthday" required>
                    </div>

                    <div class="authen-form_group">
                        <lable class="authen-form_lable" style="font-size: 20px;">Địa Chỉ </lable> <br>
                        <input type="text" class="authen-form_input" id="address" name="address" placeholder="Nhập địa chỉ"
                               required>
                    </div>

                    <div class="authen-form_group" style="font-size: 20px;">
                        <lable class="authen-form_lable">Số điện thoại</lable> <br>
                        <input type="phone" class="authen-form_input" id="phone" name="phone"
                               placeholder="Nhập số điện thoại" required>
                    </div>

                    <div class="authen-form_group" style="font-size: 20px;">
                        <lable class="authen-form_lable">Email</lable> <br>
                        <input type="text" class="authen-form_input" id="email" name="email"
                               placeholder="VD:nguyen123@gmail.com" required>
                    </div>
                </div>
            </div>

        </div>
        <div class="authen-form_control">
            <!-- <button class="btn">Xác nhận</button>  -->
            <input onclick="send()" type="button" class="btn" value="Xác Nhận">
        </div>
        <script>
            function send() {

                var arr = document.getElementsByTagName('input');
                var fullname = arr[0].value;
                var birthday = arr[1].value;
                var address = arr[2].value;
                var phone = arr[3].value;
                var email = arr[4].value;
                if (fullname == "" || birthday == "" || address == "" || phone == "" || email == "") {
                    alert("Nhập đầy đủ thông tin");
                    return;
                }
                var filter = /^[a-zA-Z]+[\w-_\.]*\@([\w]+\.)+[\w]+[\w]$/;
                if (!filter.test(email)) {
                    alert('Hay nhap dia chi email hop le.\nExample@gmail.com');
                    email.focus;
                    return false;
                }

                var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
                if (!vnf_regex.test(phone)) {
                    alert("Số điện thoại không đúng định dạng");
                    phone.focus;
                    return false;
                }


            }

        </script>

    </body>

</html>