<%@ page import="psm.vo.Member" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    
<title>Sign Up</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/non-responsive.css">
</head>

  <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
     <a class="navbar-brand" href="<%=request.getContextPath()%>/index.html">Peaceful Land</a>
    </div>
      <ul class="nav navbar-nav">
        <li><a href="#">Trade Board</a></li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" id="search" class="form-control" placeholder="What do you want?">
        </div>
        <button type="submit" class="btn btn-default">Search</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
      	<c:if test="${empty sessionScope.member and empty sessionScope.member.id}">
        <li role="presentation"><a href="<%=request.getContextPath()%>/member/signup.do">Sign Up</a></li>
        </c:if>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
          <c:if test="${empty sessionScope.member or empty sessionScope.member.id}">
          My info 
          </c:if>
          <c:if test="${!empty sessionScope.member and !empty sessionScope.member.id}">
          Hello ${member.tradeName}!
          </c:if>
          <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">My Trade</a></li>
            <li><a href="#">My Information</a></li>
            <li><a href="#">Register Account</a></li>            
            <c:if test="${empty sessionScope.member or empty sessionScope.member.id}">
            <li class="divider"></li>
            <li><a href="<%=request.getContextPath()%>/auth/signin.do">Sign In</a></li>
            </c:if>
            <c:if test="${!empty sessionScope.member or !empty sessionScope.member.id}">
            <li class="divider"></li>
            <li><a href="<%=request.getContextPath()%>/auth/signout.do">Sign out</a></li>
            </c:if>
          </ul>
        </li>
      </ul>
  </div><!-- /.container-fluid -->
</nav>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="./resources/js/bootstrap.min.js"></script>
</body>
</html>