<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{border-collapse:collapse;}
table,tr,td{border:1px solid black;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
//자동실행
$(function(){
	ajax_view();
});
//리스트 가져오기
function ajax_view(){
	$.ajax({
		type:'post',
		url:'./ajax_view',
		data:{ }, //jsp에서 controller로 데이터가 있으면 기입
		contentType:'application/json; charset=utf-8',
		success:function(data){
			if(confirm("데이터를 가져오시겠습니까?")==true){
				var html = "";
				html+="<td>"+data.bNum+"</td><td>"+data.bTitle+"</td><td>"+data.bContent+"</td><td>"+data.bName+"</td>";
				$('#ajax').html(html);
			}else{
				alert('데이터를 불러오지 못하였습니다.');
			}
		},
		error:function(request,status,error){
			alert('ajax 실패');
		}
	});
}
</script>
</head>
<body>
<table>
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>내용</td>
		<td>이름</td>
	</tr>
	<tr id="ajax">
		
	</tr>
</table>
</body>
</html>