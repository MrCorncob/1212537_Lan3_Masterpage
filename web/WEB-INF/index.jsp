<%-- 
    Document   : index
    Created on : Oct 10, 2015, 3:11:59 AM
    Author     : Corncob
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- content right-->
<h1>Sản Phẩm Ngẫu Nhiên</h1>

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
