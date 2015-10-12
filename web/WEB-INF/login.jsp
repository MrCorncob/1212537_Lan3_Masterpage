<%-- 
    Document   : login.jsp
    Created on : May 10, 2015, 3:11:59 AM
    Author     : Corncob
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<c:choose>
    <c:when test="${sessionScope.user == null}">
        <div class="register">
            <div class="col-md-6 login-left">
                <h3>KHÁCH HÀNG MỚI?</h3>
                <p>Hãy nhanh tay đăng kí tài khoản mới, bạn sẽ có thể thanh toán dễ dàng hơn, lưu trữ thông tin/địa chỉ thanh toán, kiểm tra đơn hàng và hơn thế nữa. </p>
                <a class="acount-btn" href="register.html">Đăng Kí</a>
            </div>
            <div class="col-md-6 login-right">
                <h3>KHÁCH HÀNG ĐÃ ĐĂNG KÍ</h3>
                <p>Nếu bạn đã có một tài khoản, hãy đăng nhập</p>
                <form action="login.html" method="post">
                    <div>
                        <span>Tên tài khoản<label>*</label></span>
                        <input type="text" name="username" > 
                    </div>
                    <div>
                        <span>Mật khẩu<label>*</label></span>
                        <input type="password" name="password" > 
                    </div>
                    <label>${requestScope.message}</label></br>
                    <a  href="forgot.html">Quên mật khẩu?</a>
                    <input type="submit" value="Đăng Nhập">

                </form>
            </div>	
            <div class="clearfix"> </div>
        </div>
    </c:when>
    <c:otherwise>
        <h1>Bạn đã đăng nhập!</h1>
    </c:otherwise>   
</c:choose> 