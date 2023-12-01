<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//테이터베이스 라이브러리 등록, db라이브러리 업로드, db접속, sql실행
//1)데이터베이스 라이브러리 등록:web-inf/lib폴더에 ojdbc8.jar 복사
//2)라이브러리 업로드
Class.forName("oracle.jdbc.driver.OracleDriver");
//3)db 접속
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
//out.print(conn);
String sql= "select member_custno_seq.nextval from dual";
PreparedStatement ps = conn.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
int custno=0;
if(rs.next()){
	//custno=rs.getInt("nextval");
	custno=rs.getInt(1);
}
rs.close();ps.close();conn.close();
%>    

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
table{
	margin: auto; /* margin-left: auto; margin-right: auto;*/
	
}
td:first-child {
	text-align: center;
	font-weight: bold;
	width: 260px;
}
td:last-child {
	width: 400px;
}
#phone{
	width: 40%;
}
#address{
	width: 55%;
}
input[type=text]{
	width: 25%;
}
input[type=submit], input[type=button]{
	width: 60px;
	height: 30px;
	font-size: 15px;
}
a {
  	text-decoration: none;
  	color: white;
}
</style>
<script>
function valuecheck() {
	var custname=document.getElementById("custname");
	var phone=document.getElementById("phone");
	var address=document.getElementById("address");
	var joindate=document.getElementById("joindate");
	var grade=document.getElementById("grade");
	var city=document.getElementById("city");

	if(custname.value==""){
		alert("회원성명이 입력되지 않았습니다");
		custname.focus();
		return false;
	}
	if(phone.value==""){
		alert("회원전화 입력되지 않았습니다");
		phone.focus();
		return false;
	}
	if(address.value==""){
		alert("회원주소이 입력되지 않았습니다");
		address.focus();
		return false;
	}
	if(joindate.value==""){
		alert("가입일자 입력되지 않았습니다");
		joindate.focus();
		return false;
	}
	if(grade.value==""){
		alert("고객등급이 입력되지 않았습니다");
		grade.focus();
		return false;
	}
	if(city.value==""){
		alert("도시코드가 입력되지 않았습니다");
		city.focus();
		return false;
	}
	
}
</script>
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
	<h2>홈쇼핑 회원 등록</h2><br>
	<form action="creatememberproc.jsp" method="post" onsubmit="return valuecheck()">
	<table border="1">
	<tr>
		<td>회원번호(자동발생)</td>
		<td><input type="text" id="custno" name="custno" value="<%=custno %>"></td>
	</tr>
	<tr>
		<td>회원성명</td>
		<td><input type="text" id="custname" name="custname"></td>
	</tr>
	<tr>
		<td>회원전화</td>
		<td><input type="text" id="phone" name="phone"></td>
	</tr>
	<tr>
		<td>회원주소</td>
		<td><input type="text" id="address" name="address"></td>
	</tr>
	<tr>
		<td>가입일자</td>
		<td><input type="text" id="joindate" name="joindate"></td>
	</tr>
	<tr>
		<td>고객등급[A:VIP, B:일반,C:직원]</td>
		<td><input type="text" id="grade" name="grade"></td>
	</tr>
	<tr>
		<td>도시코드</td>
		<td><input type="text" id="city" name="city"></td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value="등록">
		<input type="button" value="조회" onclick="javascript:location.href='memeberlist.jsp'">
		</td>
	</tr>
	</table>
	</form>
</section>
<footer>HRDKOREA Copyrightⓒ2016 ALL rights.Human Resources Development Service of Korea</footer>
</body>
</html>