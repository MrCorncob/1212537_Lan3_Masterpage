<%-- 
    Document   : register
    Created on : May 10, 2015, 11:11:45 PM
    Author     : Corncob
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<div class="register">
    <form action="register.html" method="post"> 
        <div class="register-bottom-grid">
            <h3>THÔNG TIN ĐĂNG NHẬP</h3>
            ${requestScope.message}
            <div style="float:none">
                <span>Tên đăng nhập<label>*</label></span>
                <input required class="form-control" type="text" name="username">
            </div>

            <div>
                <span>Mật khẩu<label>*</label></span>
                <input required class="form-control" type="password" name="password">
            </div>
            <div>
                <span>Nhập lại mật khẩu<label>*</label></span>
                <input required class="form-control" type="password" name="repassword">
            </div>
            <div class="clearfix"> </div>
        </div>

        <div class="clearfix"> </div>
        <div class="register-top-grid">
            <h3>THÔNG TIN CÁ NHÂN</h3>
            <div>
                <span>Họ<label>*</label></span>
                <input  required class="form-control" type="text" name="firstname"> 
            </div>
            <div>
                <span>Tên<label>*</label></span>
                <input required class="form-control" type="text" name="lastname"> 
            </div>
            <div>
                <span>Giới tính<label>*</label></span>
                <input type="radio" name="gender" value="male"><label>Nam</label>
                <input type="radio" name="gender" value="female" checked><label>Nữ</label>
            </div>
            <div>
                <span>Ngày sinh<label>*</label></span>
                <input required class="form-control" type="text" name="birthday" placeholder="yyyy-mm-dd"> 
            </div>
            <div>
                <span>Địa chỉ email<label>*</label></span>
                <input required class="form-control" type="email" name="email"> 
            </div>
            <div>
                <span>Số điện thoại<label>*</label></span>
                <input required class="form-control" type="text" name="phone"> 
            </div>
            <div>
                <span>Địa chỉ<label>*</label></span>
                <input required class="form-control" type="text" name="address"> 
            </div>
            <div class="clearfix"> </div>

        </div>
        <div class="clearfix"> </div>
        <div class="register-but">
            <input type="submit" value="Đăng kí">
            <div class="clearfix"> </div>
        </div>
    </form>

</div>