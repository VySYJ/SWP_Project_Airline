<%-- 
    Document   : AddFlight
    Created on : Feb 21, 2023, 9:07:07 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>THÊM CHUYẾN BAY</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <style>
            #form {
                border: outset gray;
                margin-top: 20px;
            }
        </style>
    </head>

    <body>
        <div id="wrapper">
            <div class="container">
                <div class="row justify-content-around">
                    <form action="FlightControllers" class="col-md-6 p-3" method="post" name="form_1" id="form">
                        <h1 class="text-center h3">THÊM CHUYẾN BAY</h1>
                        <div class="form-group">
                            <label for="textIDFlight">Mã chuyến bay</label>
                            <input type="text" name="textIDFlight" id="" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="dteG">Ngày đi</label>
                            <input type="date" name="dteG" id="dteG" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="dteT">Ngày đến</label>
                            <input type="date" name="dteT" id="" class="form-control" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="texttimego">Giờ đi</label>
                            <input type="text" name="texttimego" id="" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="texttimeto">Giờ đến</label>
                            <input type="text" name="texttimeto" id="" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="textFrom">Từ</label>
                            <input type="text" name="textFrom" id="" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="textTo">Đến</label>
                            <input type="text" name="textTo" id="" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="textSbG">Sân bay đi</label>
                            <input type="text" name="textSbG" id="" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="textSbT">Sân bay đến</label>
                            <input type="text" name="textSbT" id="" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="txtIDAirplane">Mã máy bay</label>
                            <input type="text" name="txtIDAirplane" id="" class="form-control" required>
                        </div>
                        <input text-center type="submit" value="Xác nhận" name="btnInsert" class="btn-primary">
                    </form>
                </div>

            </div>


        </div>
        <script src="./main.js">
        </script>
    </body>

</html>