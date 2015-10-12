<%-- 
    Document   : cart.jsp
    Created on : May 10, 2015, 3:11:59 AM
    Author     : Corncob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Giỏ Hàng Của Bạn</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <!--webfont-->
        <link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="js/hover_pack.js"></script>
        
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <!--header-->
        <div class="main">
            <div class="content_top">
                <div class="container">
                    <%@ include file="leftbar.jsp" %>
                    <div class="col-md-9">
                        <div class="text-info text-center">
                            <h1>LƯU GIỎ HÀNG THÀNH CÔNG</h1>
                        <h2>Vui lòng kiểm tra email để xem chi tiết</h2>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
        </div>

        <!--footer-->
        <%@ include file="footer.jsp" %>

    </body>
</html>		