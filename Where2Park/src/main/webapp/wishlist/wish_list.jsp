<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <link rel="preconnect" href="https://fonts.gstatic.com">
	
	    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	    <script src="https://kit.fontawesome.com/415f6f6023.js" crossorigin="anonymous"></script>
	    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	
	    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/My-page-wish-list.css">
		
		<meta charset="UTF-8">
		<title>어따세워? 찜한 주차장 목록</title>
	</head>
	<body>
		<jsp:include page="../header.jsp"></jsp:include>
			<div id="cntnr">
				<!-- 각자의 파트는 이곳에서부터 작업하실 수 있습니다. -->
				<div class="cntnr-top-margin"></div>
				<c:forEach var="wishList" items="${wishList}">
					<div class="MpArm-arti">
						<form action="delete_wish.do">
							<input type="checkbox" name="wish_id" value="${wishList.user_id}" id="chckheart"/>
							<label for="chckheart"><i class="fas fa-heart"><input type="submit"/></i></label>
						</form>
						<p>
							user_id=${wishList.user_id} | parking_id=${wishList.parkingVO.parking_id} | wish_id=${wishList.wish_id}
						</p>
						<p>
							 ${wishList.parkingVO.parking_location}
						</p>
						<p>
							 ${wishList.parkingVO.parking_title}
						</p>
					</div>
				</c:forEach>
				<!-- <div class="MpArm-arti">2</div>
				<div class="MpArm-arti">3</div>
				<div class="MpArm-arti">4</div> -->
				<!-- 각자의 파트는 이곳까지 작업해주시면 되겠습니다. -->
			</div>
		<jsp:include page="../tail.jsp"></jsp:include>
	</body>
</html>