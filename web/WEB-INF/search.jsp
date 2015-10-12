<%-- 
    Document   : category.jsp
    Created on : May 10, 2015, 3:11:59 AM
    Author     : Corncob
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Kết Quả Tìm Kiếm</title>
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
                        <div class="clearfix"></div>
                        <h1 class="text-info">KẾT QUẢ TÌM KIẾM</h1>
                        <c:forEach var="_product" items="${productList}">
                            
                        <div class="col-md-4 top_grid1-box1">
                            <a href="product.html?id=${_product.getId()}">
                                <div class="grid_1">
                                    <div>
                                        <img src="images/product/${_product.getId()}.png" class="img-responsive" alt=""/> </div>
                                    <div class="grid_2">
                                        ${_product.getName()}
                                        <ul class="grid_2-bottom">
                                            <li class="grid_2-left">${_product.getPriceFormat()}</li>
                                            <li class="grid_2-right"><div class="btn btn-primary btn-normal btn-inline " title="Mua Ngay">Mua Ngay</div></li>
                                            <div class="clearfix"> </div>
                                        </ul>
                                    </div>
                                </div>
                            </a>

                        </div>
                        </c:forEach>

                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>

            <!--footer-->
            <%@ include file="footer.jsp" %>

    </body>
</html>		