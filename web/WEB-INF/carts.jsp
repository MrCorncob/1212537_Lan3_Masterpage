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
        <script type="text/javascript">
            function updateCart(id)
            {
                var selectStr = "#cart-item-" + id;
                var value = $(selectStr + " .form-control").attr("value");
                window.location.href = "edit-cart.html?id=" + id + "&quantity=" + value;
            }
            function deleteCartItem(id)
            {
                window.location.href = "edit-cart.html?id=" + id + "&quantity=0";
            }
            function onValueChanged(e)
            {
                var value = e.value;
                $(e).attr("value", value);
            }
        </script>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <!--header-->
        <div class="main">
            <div class="content_top">
                <div class="container">
                    <%@ include file="leftbar.jsp" %>
                    <div class="col-md-9">
                        <h1 class="text-info">GIỎ HÀNG CỦA BẠN</h1>

                        <c:if test="${carts.size()>0}">
                            <div class="col-md-12">
                                <div class="container-fluid">
                                    <table class="table table-bordered table-responsive table-striped cart-table">
                                        <thead>
                                            <tr>
                                                <th>Mã Sản Phẩm</th>
                                                <th>Tên Sản Phẩm</th>
                                                <th>Màu Sắc</th>
                                                <th>Số Lượng</th>
                                                <th>Thành Tiền</th>
                                                <th colspan="2">Tùy Chọn</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="item" items="${sessionScope.carts}" varStatus="status">
                                                <tr id="cart-item-${status.index}">
                                                    <td>${item.getProductId()}</td>
                                                    <td>${item.getProductName()}</td>
                                                    <td>${item.getColor()}</td>
                                                    <td><input type="text" class="form-control" name="quantity" value="${item.getQuantity()}" onkeyup="onValueChanged(this);"></td>
                                                    <td>${item.getQuantity()*item.getPrice()} VNĐ</td>
                                                    <td><button class="btn btn-primary" onclick="javascript:updateCart(${status.index});" >Update</button></td>
                                                    <td><button class="btn btn-danger" onclick="javascript:deleteCartItem(${status.index});">Xóa</button></td>
                                                </tr>
                                            </c:forEach>

                                        </tbody>

                                    </table>
                                    <h3 class="text-info">Tổng Số Tiền Phải Thanh Toán: ${sessionScope.totalAmount} VNĐ</h3>

                                </div>

                            </div>
                        </c:if>
                        <center>
                            <a  class="btn btn-lg btn-primary" href="save-carts.html">Lưu Giỏ Hàng</a>
                        </center>
                    </div>
                </div>
            </div>
        </div>

        <!--footer-->
        <%@ include file="footer.jsp" %>

    </body>
</html>		