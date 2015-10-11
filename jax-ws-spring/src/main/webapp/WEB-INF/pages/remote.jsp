<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>  
    
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <spring:url value="/resources" var="res_base"/>
    <spring:url value="/remote" var="res_base_c"/>
<title>modal page</title>
</head>
<body>
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">Modal title</h4>
            </div> <!-- /modal-header -->
            <div class="modal-body">
            <p>Excitavit hic ardor milites per municipia plurima, quae isdem conterminant, dispositos et castella,
             sed quisque serpentes latius pro viribus repellere moliens, nunc globis confertos,
             aliquotiens et dispersos multitudine superabatur ingenti.</p>
            </div> <!-- /modal-body -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div><!-- /modal-footer -->
</body>
</html>