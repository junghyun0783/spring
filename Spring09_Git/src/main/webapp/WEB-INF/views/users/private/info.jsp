<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>info.jsp</title>
</head>
<body>
<a href="${pageContext.request.contextPath}">인덱스 페이지로 가기</a>
	<h3>회원 가입된 정보 입니다.</h3>
	<table>
		<thead>
			<tr>
				<th>항목</th>
				<th>정보</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>아이디</th>
				<td>${dto.id }</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${dto.email }</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${dto.regdate }</td>
			</tr>
		</tbody>
	</table>
	<a href="updateform.do">가입정보 수정폼</a>
	<a href="javascript:userConfirm()">회원 탈퇴</a>
	<script>
		function userConfirm(){
			var isDelete=confirm("탈퇴 하시겠습니까?");
			if(isDelete){
				location.href="delete.do";
			}
		}
	</script>
</body>
</html>