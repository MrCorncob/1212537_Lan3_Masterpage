<%-- 
    Document   : header
    Created on : May 10, 2015, 10:50:54 PM
    Author     : Corncob
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="header">
    <div class="header_top">
        <div class="container">
            <div class="logo">
                <a href="index.html"><img src="images/logo.png" alt=""/></a>
            </div>
            <ul class="shopping_grid">
                <c:choose>
                    <c:when test="${sessionScope.user == null}">
                        <a href="register.html"><li>Đăng Kí</li></a>
                        <a href="login.html"><li>Đăng Nhập</li></a>
                    </c:when>
                    <c:otherwise>
                         <a href="logout.html"><li>Đăng Xuất</li></a>
                         <a href="#"><li>${user.getFullname()}</li></a>
                    </c:otherwise>   
                </c:choose> 
                    
                <a href="carts.html"><li><span class="m_1">Giỏ Hàng</span><img src="images/bag.png" alt=""/></li></a>
                <div class="clearfix"> </div>
            </ul>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="h_menu4"><!-- start h_menu4 -->
        <div class="container">
            <a class="toggleMenu" href="#">Menu</a>
            <ul class="nav">
                <li class="active"><a href="index.html" data-hover="Home">Trang Chủ</a></li>
                <li><a href="#" data-hover="Thông Tin">Thông Tin</a></li>
                <li><a href="#" data-hover="Liên Hệ">Liên Hệ</a></li>
                <li><a href="#" data-hover="Dịch Vụ">Dịch Vụ</a></li>
                <li><a href="http://daiyen.info" data-hover="DaiYen.info" target="_blank">DaiYen.info</a></li>
            </ul>
            <script type="text/javascript" src="js/nav.js"></script>
        </div><!-- end h_menu4 -->
    </div>
</div>
<div class="column_center">
    <div class="container">
        <div class="search">
            <div class="stay">Tìm Kiếm Sản Phẩm Theo</div>
            <br>
            <div >
                <form class="form-inline" action="search.html" method="get">
                    <span>
                        <label>
                            Hãng
                        </label>
                        <select class="form-control" name="manufacture">
                            <option value="-1">Bất Kì</option>
                            <c:forEach var="_manufacture" items="${requestScope.manufactureList}">
                                <option value="${_manufacture.getId()}">${_manufacture.getName()}</option>
                            </c:forEach>
                            
                        </select>
                    </span>
                        <span>
                        <label>
                            OS
                        </label>
                        <select class="form-control" name="os">
                            <option value="-1">Bất Kì</option>
                            <c:forEach var="_os" items="${requestScope.osList}">
                                <option value="${_os.getId()}">${_os.getName()}</option>
                            </c:forEach>
                        </select>
                    </span>
                    <span>
                        <label>
                            Màu
                        </label>
                        <select class="form-control" name="color">
                            <option value="">Bất Kì</option>
                            <option>Đỏ</option>
                            <option>Vàng</option>
                            <option>Đen</option>
                            <option>Trắng</option>
                            <option>Gray</option>
                            <option>Xám</option>
                        </select>
                    </span>
                    <span>
                        <label>
                            Màn Hình
                        </label>
                        <select class="form-control" name="screensize">
                            <option value="-1">Bất Kì</option>
                            <option value="4">&lt;4"</option>
                            <option value="5">4" - 5"</option>
                            <option value="6">5" - 6"</option>
                            <option value="7">&gt;6"</option>
                        </select>
                    </span>
                    <span>
                        <label>
                            Giá
                        </label>
                        <select class="form-control" name="price">
                            <option value="-1">Bất Kì</option>
                            <option value="3">&lt;3 Triệu</option>
                            <option value="5">Từ 3-5 Triệu</option>
                            <option value="10">Từ 5-10 Triệu</option>
                            <option value="20">Từ 10-20 Triệu</option>
                            <option value="100">&gt; 20 Triệu</option>
                        </select>
                    </span>
                    <input type="submit" value=""> 
                </form>

            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>