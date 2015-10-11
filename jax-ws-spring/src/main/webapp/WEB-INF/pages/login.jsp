<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>  
<%@page session="true"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
	<spring:url value="/resources" var="res_base"/>

    
	<title>user-demand</title>
	
	<link rel="stylesheet" type="text/css" href="${res_base}/bootstrap/css/style.css">
	<link rel="stylesheet" type="text/css" href="${res_base}/bootstrap/css/bootstrap-theme.css">
	<link rel="stylesheet" type="text/css" href="${res_base}/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="${res_base}/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${res_base}/bootstrap/css/bootstrap.min.css">
	
	

<html>
<head>
<style type="text/css">


.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
	font-size: 14px;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
	font-size: 14px;
}


</style>
</head>
<body dir="rtl">


<div class="container" style="/* width: 400px; */ padding-top:40px;">
    <div class="row">
    <c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">نام کاربری و گذرواژه خود را وارد نمایید</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="username" name="username" type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="">
			    		</div>
			    		<div class="checkbox">
			    	    	<label style="padding-right: 18px;">
			    	    		<input style="float: right; " name="remember" type="checkbox" value="Remember Me"> من را به یاد آور
			    	    	</label>
			    	    </div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="ورود">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
	</html>