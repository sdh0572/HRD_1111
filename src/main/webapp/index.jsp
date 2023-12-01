<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
	margin: 0;
	padding: 0;
}
header{
	height: 150px;
	background-color: rgba(50,50,255);
	color: white;
	text-align: center;
	line-height: 150px;
	font-size: 30px;
}
nav{
	background-color: rgba(120,120,255);
	color: white;
	/* text-align: center; */
}
nav > ul > li{
	display: inline-block;
	padding: 20px 30px;
}
section {
	height: 600px;
	background-color:rgba(200,200,200);
	padding: 20px 20px;
}
h2 {
	text-align: center;
}
footer{
	height: 150px;
	background: linear-gradient(to right, rgba(65,105,225) 70%, rgba(30,170,255));
	color: white;
	text-align: center;
	line-height: 150px;
	font-size: 20px;
	
}
a {
  	text-decoration: none;
  	color: white;
}
</style>

</head>

<body>

<header>쇼핑몰 회원관리ver1.0</header>
<nav>
	<ul>
		<li><a href="createmember.jsp">회원등록</a></li>
		<li><a href="memberlist.jsp">회원목록조회/수정</a></li>
		<li><a href="sales.jsp">회원매출조회</a></li>
		<li><a href="index.jsp">홈으로.</a></li>
	</ul>
</nav>
<section>
	<h2>쇼핑몰회원관리프로그램</h2><br>
	<p><pre>쇼핑몰 회원정보와 회원매출정보 데이터 베이스를 구축하고 회원관리프로그램을 작성하는 프로그램이다
프로그램 작성순서
1.회원정보 테이블을 생성한다.
2.매출정보 테이블을 생성한다.
3.회원정보, 매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.
4.회원정보 입력 화면 프로그램을 작성한다.
5.회원정보 조회 프로그램을 작성한다.
6.회원매출정보 조회 프로그램을 작성한다.</pre></p>
</section>
<footer>HRDKOREA Copyrightⓒ2016 ALL rights.Human Resources Development Service of Korea</footer>
</body>
</html>