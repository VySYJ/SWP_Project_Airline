<%-- 
    Document   : HomePage
    Created on : Feb 15, 2023, 10:23:11 AM
    Author     : LeThiThuyVy_CE160174
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link rel="stylesheet" href="/css/home.css">
        <link rel="stylesheet" href="path/to/fontawesome.min.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css"
              integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
        <style>
            /*          
               Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
               Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/CascadeStyleSheet.css to edit this template
            */
            .Homepage {
                text-decoration: none;
                padding: 0;
            }

            .Homepageimg {
                height: auto;
                width: 100%;
                background-image: url('img/headerFlight.png');
                background-repeat: no-repeat;
                background-size: cover;
                margin-top: 50px;
            }

            .Homepageimg h1 {
                font-size: x-larger;
                font-weight: 10px;
                color: white;
                padding-top: 20px;
                padding-bottom: 20px;
                text-align: center;
            }

            .formsearch {
                box-shadow: 0px 2px 6px 2px;
                width: 60%;
                margin: auto;
                margin-top: 50px;
                height: auto;
            }

            .title h3 {
                color: #4E4E4E;
                font-weight: 150;
                text-align: center;
                padding: 10px;
            }

            .title {
                border-bottom: 1px solid #4E4E4E;
                margin: 10px 0px;
            }

            .option {
                position: relative;
                padding-left: 0px;
                cursor: pointer;
                display: block;
                padding-top: 5px;
                margin-left: 15px;
            }

            .option input {
                margin-right: 8px;
            }

            .fromto {
                width: 85%;
                display: flex;
            }

            .form-control {
                padding: 0px 10px;
                align-items: center;
            }

            .de-arr {
                width: 85%;
                display: block;
            }

            .group {
                display: inline-block;
            }

            .departure input[type="date"] {
                size: 10;
            }

            .option2 {
                margin-bottom: 5px;
            }
            .option1{
                margin-bottom: 5px;

            }

            .departure {
                padding-right: 15px;
            }

            .infobook {
                width: 60%;
                margin-top: 10px;
                display: flex;
            }

            .infoPassenger {
                width: 29%;
                border: 1px solid;
                text-align: center;
            }

            .container2 {
                margin: 0;
                display: grid;
                grid-gap: 5px;
                grid-template-columns: repeat(auto-fit, 100px);
                grid-template-rows: repeat(2, 100px);
            }

            .container2>div {
                display: inline-block;
            }

            .de-arr>div {
                display: inline-block;
            }

            .from {
                margin-right: 10px;
            }
            .to{
                margin-right: 10px;

            }
            @media (max-width:858px) {
                .fromto .from .to{
                    display: inline-block;
                }
            }


            .departure {
                margin-right: 40px;
            }

            h3 {
                font-size: large;
                font-weight: 250;
                text-align: center;
                margin: 0;
            }

            #nguoilon,
            #treem,
            #embe {
                margin: 2px 10px;
            }

            .btnfindflight{
                color: black;
                background-color: #f7a03d;
                border: none;
                border-radius: 3px;
                padding: 10px;
                margin: 0;
                margin-bottom: 20px;
                margin-top: 20px;
            }
            .btnfindflight:hover{
                color: white;
                background-color: chocolate;
            }
            .autocomplete {
                /*the container must be positioned relative:*/
                position: relative;
                display: inline-block;
            }
            .autocomplete-items {
                position: absolute;
                border: 1px solid #d4d4d4;
                border-bottom: none;
                border-top: none;
                z-index: 99;
                /*position the autocomplete items to be the same width as the container:*/
                top: 100%;
                left: 0;
                right: 0;
            }
            .autocomplete-items div {
                padding: 10px;
                cursor: pointer;
                background-color: #fff;
                border-bottom: 1px solid #d4d4d4;
            }
            .autocomplete-items div:hover {
                /*when hovering an item:*/
                background-color: #e9e9e9;
            }
            .autocomplete-active {
                /*when navigating through the items using the arrow keys:*/
                background-color: DodgerBlue !important;
                color: #ffffff;
            }
            .tickets{
                padding: 80px 100px;
            }
            .icon-hot{
                float: left;
                width: 5%;
            }
            .dealhotel{
                font-weight: bolder;
                font-size: xx-large;
                float: left;
                text-align: left;
                color: red;
            }
            #cards_landscape_wrap-2{
                text-align: center;
            }
            #cards_landscape_wrap-2 .container{
                padding-top: 80px;
                padding-bottom: 100px;
            }
            #cards_landscape_wrap-2 a{
                text-decoration: none;
                outline: none;
            }
            #cards_landscape_wrap-2 .card-flyer {
                border-radius: 5px;
            }
            #cards_landscape_wrap-2 .card-flyer .image-box{
                background: #ffffff;
                overflow: hidden;
                box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.50);
                border-radius: 5px;
            }
            #cards_landscape_wrap-2 .card-flyer .image-box img{
                -webkit-transition:all .9s ease;
                -moz-transition:all .9s ease;
                -o-transition:all .9s ease;
                -ms-transition:all .9s ease;
                width: 100%;
                height: 200px;
            }
            #cards_landscape_wrap-2 .card-flyer:hover .image-box img{
                opacity: 0.7;
                -webkit-transform:scale(1.15);
                -moz-transform:scale(1.15);
                -ms-transform:scale(1.15);
                -o-transform:scale(1.15);
                transform:scale(1.15);
            }
            #cards_landscape_wrap-2 .card-flyer .text-box{
                text-align: center;
            }
            #cards_landscape_wrap-2 .card-flyer .text-box .text-container{
                padding: 30px 18px;
            }
            #cards_landscape_wrap-2 .card-flyer{
                background: #FFF4BB;
                margin-top: 50px;
                -webkit-transition: all 0.2s ease-in;
                -moz-transition: all 0.2s ease-in;
                -ms-transition: all 0.2s ease-in;
                -o-transition: all 0.2s ease-in;
                transition: all 0.2s ease-in;
                box-shadow: 0px 3px 4px rgba(0, 0, 0, 0.40);
            }
            #cards_landscape_wrap-2 .card-flyer:hover{
                background: #c8f9ff;
                box-shadow: 0px 15px 26px rgba(0, 0, 0, 0.50);
                -webkit-transition: all 0.2s ease-in;
                -moz-transition: all 0.2s ease-in;
                -ms-transition: all 0.2s ease-in;
                -o-transition: all 0.2s ease-in;
                transition: all 0.2s ease-in;
                margin-top: 50px;
            }
            #cards_landscape_wrap-2 .card-flyer .text-box p{
                margin-top: 10px;
                margin-bottom: 0px;
                padding-bottom: 0px;
                font-size: 14px;
                letter-spacing: 1px;
                color: #000000;
            }
            #cards_landscape_wrap-2 .card-flyer .text-box h6{
                margin-top: 0px;
                margin-bottom: 4px;
                font-size: 18px;
                font-weight: bold;
                text-transform: uppercase;
                letter-spacing: 1px;
                color: #00acc1;
            }
            .row{
                justify-content: space-around;
                ;
            }
            .price{
                font-weight: bold;
            }


        </style>
    </head>
    <body>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

        <%@include file="Header.jsp" %>
        
        <div class="Homepage">
            <div class="Homepageimg">
                <h1>Welcome to our flight booking website <br>
                    We are here for you
                </h1>
            </div>
            <div class="formsearch" action="searchflight">
                <form autocomplete="off">
                    <div class="title">
                        <h3>Đặt vé tại đây</h3>
                    </div>
                    <div class="optionflight d-flex flex-wrap">
                        <label class="option my-sm-0 my-2">
                            <input type="radio" name="radio" id="oneway" onchange="disableDate()">Một Chiều
                            <span class="checkmark"></span>
                        </label>
                        <label class="option my-sm-0 my-2">
                            <input type="radio" name="radio" id="roundtrip" checked onchange="ableDate()">Khứ Hồi
                            <span class="checkmark"></span>
                        </label>
                    </div>
                    <div class="container container2 d-flex flex-wrap">
                        <div class="infobook">
                            <div class="de-arr">
                                <div class="from align-items-center flex-fill me-sm1 my-sm-2 position-relative">
                                    <label class="option1" for="dep">From</label> <br />
                                    <div class="autocomplete">
                                        <input type="text" required placeholder="From" class="form-control" id="myInput1" />
                                    </div>
                                </div>
                                <div class="to align-items-center flex-fill ms-sm-0 my-sm-0 my-3 position-relative">
                                    <label class="option1" for="arr">To</label> <br />
                                    <input type="text" required placeholder="To" class="form-control" id="myInput2" />
                                </div>
                            </div>

                            <div class="de-arr">
                                <div class="departure align-items-center flex-fill me-sm1 my-sm-2 position-relative">
                                    <label class="option2" for="dep">Ngày đi</label> <br />
                                    <input type="date" required placeholder="Depart Date" class="form-control dep" />
                                </div>
                                <div class="arrival align-items-center flex-fill ms-sm-0 my-sm-0 my-3 position-relative">
                                    <label class="option2" for="arr">Ngày về</label> <br />
                                    <input type="date" required placeholder="Arrival Date" id="ngayve" class="form-control arr" />
                                </div>
                            </div>
                        </div>
                        <div class="infoPassenger">
                            <h3 class="text-center">Hành khách</h3> <br />
                            <label for="">Người lớn</label>
                            <select name="nguoilon" id="nguoilon">
                                <option value="0">0</option>
                                <option selected value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                            <br />
                            <label for="">Người lớn</label>
                            <select name="treem" id="treem">
                                <option value="0">0</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                            <br />
                            <label for="">Em bé</label>
                            <select name="embe" id="embe">
                                <option value="0">0</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>

                    </div>
                    <div class="findflight text-center">
                        <button type="submit" class="btnfindflight">Tìm kiếm chuyến bay</button>
                    </div>
                </form>
            </div>
            <div id="cards_landscape_wrap-2">
                <div class="container">
                    <div class="row">
                        <p class="dealhotel"><img class="icon-hot" src="${pageContext.request.contextPath}/img/icon-hot.png">KHÁCH SẠN</p>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <a href="">
                                <div class="card-flyer">
                                    <div class="text-box">
                                        <div class="image-box">
                                            <img src="img/Hotel3.png" alt="" />
                                        </div>
                                        <div class="text-container">
                                            <h6>Đà Lạt Home</h6>
                                            <p><i class="bi bi-geo-alt-fill location"></i>Phường 3, Đà Lạt</p>
                                            <p>Room: Double Room</p>
                                            <p class="price"><i class="bi bi-currency-dollar"></i>999.999VND</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <a href="">
                                <div class="card-flyer">
                                    <div class="text-box">
                                        <div class="image-box">
                                            <img src="img/HT_Dalat.png" alt="" />
                                        </div>
                                        <div class="text-container">
                                            <h6>Đà Lạt Home</h6>
                                            <p><i class="bi bi-geo-alt-fill location"></i>Phường 3, Đà Lạt</p>
                                            <p>Room: Double Room</p>
                                            <p class="price"><i class="bi bi-currency-dollar"></i>999.999VND</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-5 col-lg-4">
                            <a href="">
                                <div class="card-flyer">
                                    <div class="text-box">
                                        <div class="image-box">
                                            <img src="img/Hotel.png" alt="" />
                                        </div>
                                        <div class="text-container">
                                            <h6>Đà Lạt Home</h6>
                                            <p><i class="bi bi-geo-alt-fill location"></i>Phường 3, Đà Lạt</p>
                                            <p>Room: Double Room</p>
                                            <p class="price"><i class="bi bi-currency-dollar"></i>999.999VND</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <%@include file="Footer.jsp" %>
        <script>
            function disableDate() {
                if (document.getElementById("oneway").checked) {
                    document.getElementById("ngayve").disabled = true;
                }
            }
            function ableDate() {
                if (document.getElementById("roundtrip").checked) {
                    document.getElementById("ngayve").disabled = false;
                }
            }

        </script>
    </body>
</html>
