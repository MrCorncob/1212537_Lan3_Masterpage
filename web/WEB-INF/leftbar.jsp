<%-- 
    Document   : leftbar.jsp
    Created on : May 10, 2015, 10:55:07 PM
    Author     : Corncob
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-md-3 sidebar_box">
    <div class="sidebar">
        <div class="menu_box">
            <h3 class="menu_head">Danh Mục Sản Phẩm</h3>
            <ul class="menu">
                <li><a href="#"><img class="arrow-img" src="images/f_menu.png" alt=""/>Hãng Sản Xuất</a>
                    <ul>
                        <c:forEach var="_manufacture" items="${requestScope.manufactureList}">
                            <li><a href="./manufacture.html?id=${_manufacture.getId()}">${_manufacture.getName()}</a></li>
                            </c:forEach>

                    </ul>
                </li>
                <li><a href="#"><img class="arrow-img" src="images/f_menu.png" alt=""/>Hệ Điều Hành</a>
                    <ul>
                        <c:forEach var="_os" items="${requestScope.osList}">
                            <li><a href="./operating-system.html?id=${_os.getId()}">${_os.getName()}</a></li>
                            </c:forEach>

                    </ul>
                </li>

            </ul>
        </div>
        <!--initiate accordion-->
        <script type="text/javascript">
            $(function () {
                var menu_ul = $('.menu > li > ul'),
                        menu_a = $('.menu > li > a');
                menu_ul.hide();
                menu_a.click(function (e) {
                    e.preventDefault();
                    if (!$(this).hasClass('active')) {
                        menu_a.removeClass('active');
                        menu_ul.filter(':visible').slideUp('normal');
                        $(this).addClass('active').next().stop(true, true).slideDown('normal');
                    } else {
                        $(this).removeClass('active');
                        $(this).next().stop(true, true).slideUp('normal');
                    }
                });

            });
        </script>
    </div>
    <div class="corncob text-center">
        <img src="images/corncob.png" class="img-responsive" alt=""/>
        <h3>MrCorncob</h3>

    </div>

</div>
