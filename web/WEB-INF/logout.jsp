<%-- 
    Document   : logout
    Created on : May 11, 2015, 5:26:51 AM
    Author     : Corncob
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<div class="text-center text-info">
    <p>${requestScope.message}</p>
    <p>Bạn sẽ được chuyển về trang chủ sau 3s nữa</p>
</div>
<script>
    window.setTimeout(function () {
        window.location.href = "index.html";
    }, 3000);
</script>