<%-- 
    Document   : cart.jsp
    Created on : May 10, 2015, 3:11:59 AM
    Author     : Corncob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<h1 class="text-info">GIỎ HÀNG CỦA BẠN</h1>
<c:if test="${sessionScope.carts.size()>0}">
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