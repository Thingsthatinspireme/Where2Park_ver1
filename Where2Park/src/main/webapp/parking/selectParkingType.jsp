<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<title>Document</title>

<style>
#ftr{
	clear:both;
}
#cntnr{
	clear:both
	}

#cntnr .bs-title {
	width: 100%;
	height: 50px;
	/*border: 1px solid #ccc;*/
	box-sizing: border-box;
	text-align: center;
	clear:both;
	font-size:2em;
    font-weight:400;
    padding:0 0 20px 0;
}

#cntnr .bs-subtitle {
	width: 100%;
	height: 150px;
	/*border: 1px solid #ccc;*/
	box-sizing: border-box;
	text-align: center;
	font-size: 20px;
}

#cntnr .bs-content {
	width: 100%;
	height: 650px;
	/*border: 1px solid #ccc;*/
	box-sizing: border-box;
	margin: 0 0 70px 0;
	text-align: center;
	font-size: 18px;
	background-image: url('<%=request.getContextPath()%>/images/car.png');
	background-size: cover;
}
img{
	width:100%;
	height : auto;
	margin : 0 auto;
	object-fit: cover;
}
.card-header{
	text-align: center;
	font-size:2em;
	padding: 5px 0 5px 0;
    border-bottom: 1px solid rgba(0,0,0,.125);
}
.card-text{
	text-align:center;
	font-size:1em;
	margin: 20px 0;
}
#short-parking {
	width: 400px;
	height: 230px;
	float: left;
	box-sizing: border-box;
	text-align: center;
	margin: 0 30px 0 0;
	border: 1px solid rgba(0,0,0,.125);
    border-radius: .25rem;
	/*
	border: 2px solid rgb(255, 115, 0);
	line-height: 150px;
	border-radius: 10px 10px 10px 10px;
	cursor: pointer;
	color: white;
	font-size: 25px;*/
}
.bs-select {
	width : 100%;
	height : 400px;
}


#long-parking {
	width: 400px;
	height: 230px;
	float: right;
	box-sizing: border-box;
	text-align: center;
	margin: 0 0 0 0;
	border: 1px solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

#date {
	clear: both;
}
.card-footer {
    padding: .75rem 1.25rem;
}
.btn-primary-select {
	font-weight :400;
	text-align : center;
	vertical-align: middle;
    color: #fff;
    border: 1px solid transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: .25rem;
    background-color: #367FFF;
    float: right;
    border-color: #367FFF;
}
.btn-primary-select a:hover {
	cursor: pointer;
}

</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>

	<div id="cntnr">
		<!-- 각자의 파트는 이곳에서부터 작업하실 수 있습니다. -->
		<div class="cntnr-top-margin"></div>


		<div class="bs-title">
			<h1>주차장 내놓기</h1>
		</div>
		<div class="bs-subtitle">
			<br /> <br />
			<h2>사용하지 않는 주차공간이 있으신가요?</h2>
			<h2>주차 공간을 공유하시고 어따세워와 함께 빈공간을 새로움으로 채우세요</h2>
		</div>
		<div class="bs-content">
			
		</div>
		<div class="bs-select">
		
			<div id="short-parking">
				<p class="card-header">단기주차</p>
				<div>
					<p class="card-text">하루 안에서만 주차장을 등록 할 수 있습니다.<br>
				            시작시간과 종료시간을 자세히 정해주세요 (1시간단위)<br>
				            시간당 요금을 등록하여 주세요.
				    </p>
				</div>
				<div class="card-footer">
				<c:choose>
					<c:when test="${empty sessionScope.userId or empty sessionScope.userNickName }">
						<a href="../user/userLogin.jsp" class="btn-primary-select">등록하기
						</a>
					</c:when>
					<c:when test="${!empty sessionScope.userId or !empty sessionScope.userNickName }">
						<a href="../insertShortParking.jsp" class="btn-primary-select">등록하기
						</a>
					</c:when>
					<c:otherwise>
					</c:otherwise>	
				</c:choose>
				</div>
			</div>
			<div id="long-parking">
				<p class="card-header">장기주차</p>
		         <p class="card-text">오늘부터 한달까지 등록 할 수 있습니다.<br>
			            시작날짜과 종료날짜을 정해주세요. (하루단위)<br>
			            하루당 요금을 등록하여 주세요.v
			      </p>
			      <div class="card-footer">
				<c:choose>
					<c:when test="${empty sessionScope.userId or empty sessionScope.userNickName }">
						<a href="../user/userLogin.jsp" class="btn-primary-select">등록하기</a>
					</c:when>
					<c:when test="${!empty sessionScope.userId or !empty sessionScope.userNickName }">
						<a href="../insertLongParking.jsp" class="btn-primary-select">등록하기</a>
					</c:when>
				</c:choose>
				</div>
			
			
				
				
			</div>

		</div>

	</div>
	<!-- 각자의 파트는 이곳까지 작업해주시면 되겠습니다. -->
	<jsp:include page="../tail.jsp"></jsp:include>
</body>
</html>