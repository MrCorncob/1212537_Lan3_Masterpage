<%-- 
    Document   : _MainLayout
    Created on : Oct 10, 2015, 3:11:59 AM
    Author     : Corncob
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>${requestScope.title}</title>
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
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider").responsiveSlides({
                    auto: true,
                    nav: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <script type="text/javascript" src="js/hover_pack.js"></script>
    </head>
    <body>

        <%@ include file="header.jsp" %>
        <%@ include file="slider.jsp" %>
        <!--header-->
        <div class="main">
            <div class="content_top">
                <div class="container">

                    <div class="col-md-3 sidebar_box">
                        <!-- left_menu.jsp-->
                        <%@ include file="leftbar.jsp" %>
                    </div>
                    <div class="col-md-9">
                        <jsp:include page="${requestScope.includePath}" />
                    </div>
              </div>  	    
            </div>
        </div>

        <!--footer-->
        <%@ include file="footer.jsp" %>

    </body>
</html>		