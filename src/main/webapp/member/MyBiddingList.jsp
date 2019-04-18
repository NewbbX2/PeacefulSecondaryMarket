<%@ page import="psm.vo.Member" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">

<link rel="stylesheet" href="../resources/css/non-responsive.css">
</head>
<body>

<div class="container">

	<div class="page-header">
		<h2>Your Bidding</h2>
	</div>
	<table class="table table-hover table-bordered" style="margin:10px;" >
		<thead>
		<tr>
			<th width="5%">#</th>
			<th width="10%">Condition</th>
			<th width="30%">Title</th>
			<th width="10%">Price</th>
			<th width="10%">State</th>
			<th width="10%">Bidder</th>
			<th width="20%">How about you?</th>
		</tr>
		</thead>		
		<tbody>
		<c:forEach var="trade" items="${trades}">
			<tr>
				<td>${trade.no}</td>				
				<c:choose>
					<c:when test="${trade.condition == 0 }">
						<td>Bad</td>
					</c:when>
					<c:when test="${trade.condition == 1 }">
						<td>Not Bad</td>
					</c:when>
					<c:when test="${trade.condition == 2 }">
						<td>Good</td>
					</c:when>
					<c:when test="${trade.condition == 3 }">
						<td>Perfect</td>
					</c:when>
				</c:choose>
				<td><a href="../trade/detail.do?no=${trade.no}">${trade.title}</a></td>
				<td>${trade.price} $</td>
				<c:choose>
					<c:when test="${trade.state == 0}">
						<td>Available</td>
					</c:when>
					<c:when test="${trade.state == 1}">
						<td>Processing</td>
					</c:when>
					<c:when test="${trade.state == 2}">
						<td>Complete</td>
					</c:when>
					<c:when test="${trade.state == 3}">
						<td>Dispute</td>
					</c:when>
				</c:choose>
				<td>${trade.dealId}</td>
				<c:choose>
					<c:when test="${trade.state == 0 and trade.dealId == null}">
						<td></td>
					</c:when>
					<c:when test="${trade.state == 0 and trade.dealId != null}">
						<td><a class="btn btn-info" href="../state/update.do?no=${trade.no}&state=1">Confirm</a></td>
					</c:when>
					<c:when test="${trade.state == 1}">
						<td>
							<a class="btn btn-info" href="../state/update.do?no=${trade.no}&state=2">Accept</a>
							<a class="btn btn-info" href="../state/update.do?no=${trade.no}&state=0">Decline</a>
						</td>
					</c:when>
					<c:when test="${trade.state==2}">
						<td><button class="btn btn-info" disabled>Done</button></td>
					</c:when>
					<c:when test="${trade.state==3}">
						<td>Dispute</td>
					</c:when>
				</c:choose>
				
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
	<div class="text-center">
		<ul class="pagination">
			<li><a href="#">1</a></li>
		</ul>
	</div>
	
</div> <!--  /container  -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>

</body>
</html>