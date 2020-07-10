$(function(){
	rCount();
	rList();
});
function rCount(){
	var rList = $('#rList').serialize();
	$.ajax({
		type : 'POST',
		url : './rCount',
		data : rList,
		success:function(data){
			var html = "";
				html += "총 <span class='orange'>"+data+"</span> 개의 댓글이 달려있습니다.";
				$('#rCount').html(html);
		},
		error:function(request,status,error){
			alert('댓글 갯수 에러');
		}
	});
}
function rWrite(){
	if(confirm('댓글을 등록하시겠습니까?')!=true){
		return false;
	}else if($('#rContent').val()==""){
		alert('댓글을 작성해주세요.');
		return false;
	}
	$.ajax({
		type : 'POST',
		url : './rWrite',
		data : $('#rWrite').serialize(),
		success:function(data){
			if(data=="success"){
				$('#rContent').val("");
				$('#rPw').val("");
				rCount();
				rList();
			}
		},
		error:function(request,status,error){
			alert('실패');
		}
	});
}
function rList(){
	var rList = $('#rList').serialize();
	$.ajax({
		type : 'GET',
		url : './rList',
		data : rList,
		success:function(data){
			var html = "";
			for(var i=0; i<data.rList.length; i++){
				if(data.member!=null){
					if(data.rList[i].rPw==' '){
						html += "<ul><li class='name'>"+data.rList[i].rWriter+"<span>["+data.rList[i].rDate+"]</span><span id='rUpdate_text"+data.rList[i].reply_id+"'></span></li>";
						html += "<div id='rUpdate_area"+data.rList[i].reply_id+"'><li class='txt'>"+data.rList[i].rContent+"</li>";
						if(data.member.mId==data.rList[i].rWriter){
							html += "<li class='btn'><a href='javascript:rUpdate_form("+data.rList[i].reply_id+")' class='rebtn'>수정</a>";
							html += "<a href='javascript:rDelete("+data.rList[i].reply_id+")' class='rebtn'>삭제</a></li>";
						}
						html += "</div></ul>";
					}else{
						html += "<ul id='secret"+data.rList[i].reply_id+"'><li class='name'>"+data.rList[i].rWriter+"<span>["+data.rList[i].rDate+"]</span></li>";
						html += "<li class='txt'><a href='javascript:secret_reply("+data.rList[i].reply_id+")' class='passwordBtn'><span class='orange'>※ 비밀글입니다.</span></a></li></ul>";
					}
				}else{
					if(data.rList[i].rPw==' '){
						html += "<ul><li class='name'>"+data.rList[i].rWriter+"<span>["+data.rList[i].rDate+"]</span><span id='rUpdate_text"+data.rList[i].reply_id+"'></span></li>";
						html += "<div id='rUpdate_area"+data.rList[i].reply_id+"'><li class='txt'>"+data.rList[i].rContent+"</li>";
						html += "</div></ul>";
					}else{
						html += "<ul id='secret"+data.rList[i].reply_id+"'><li class='name'>"+data.rList[i].rWriter+"<span>["+data.rList[i].rDate+"]</span></li>";
						html += "<li class='txt'><a href='javascript:secret_reply("+data.rList[i].reply_id+")' class='passwordBtn'><span class='orange'>※ 비밀글입니다.</span></a></li></ul>";
					}
				}
				$('#replyBox').html(html);
			}
		},
		error:function(request,status,error){
			alert('댓글 불러오기 실패');
		}
	});
}
function secret_reply(reply_id){
	$.ajax({
		type : 'GET',
		url : './secret',
		data : {reply_id:reply_id},
		success:function(data){
			var html = "";
				html += "<li class='name'>"+data.secret.rWriter+"<span>["+data.secret.rDate+"]</span></li>";
				html += "<li class='txt'><strong>비밀번호</strong> <input type='password' name='rPw_check' id='rPw_check' size='15'>";
				html += "<span class='btn'><a href='javascript:rPw_check("+data.secret.reply_id+")' class='rebtn'>확인</a></span><span id='check_text'></span></li>"
			$('#secret'+reply_id).html(html);
		},
		error:function(){
			alert('실패');
		}
	});
}
function rPw_check(reply_id){
	$.ajax({
		type : 'POST',
		url : './secret',
		data : {reply_id:reply_id},
		success:function(data){
			var html = "";
			if($('#rPw_check').val()==""){
				$('#check_text').text(" * 비밀번호를 입력해주세요.");
				$('#check_text').css("color","#f7703c");
				return false;
			}
			if(data.secret.rPw != $('#rPw_check').val()){
				$('#check_text').text(" * 비밀번호가 일치하지 않습니다.");
				$('#check_text').css("color","#f7703c");
			}else{
				if(data.member!=null){
					html += "<li class='name'>"+data.secret.rWriter+"<span>["+data.secret.rDate+"]</span><span id='rUpdate_text"+reply_id+"'></span></li>";
					html += "<div id='rUpdate_area"+reply_id+"'><li class='txt'>"+data.secret.rContent+"</li>";
					html += "<li class='btn'>";
					if(data.member.mId==data.secret.rWriter){
						html += "<a href='javascript:rUpdate_form("+reply_id+")' class='rebtn'>수정</a>";
						html += "<a href='javascript:rDelete("+reply_id+")' class='rebtn'>삭제</a>";
					}
					html += "<a href='javascript:rList()' class='rebtn'>감추기</a></li></div>";
				}else{
					html += "<li class='name'>"+data.secret.rWriter+"<span>["+data.secret.rDate+"]</span><span id='rUpdate_text"+reply_id+"'></span></li>";
					html += "<div id='rUpdate_area"+reply_id+"'><li class='txt'>"+data.secret.rContent+"</li>";
					html += "<li class='btn'>";
					html += "<a href='javascript:rList()' class='rebtn'>감추기</a></li></div>";
				}
				$('#secret'+reply_id).html(html);
			}
		},
		error:function(){
			alert('실패');
		}
	});
}
function rDelete(reply_id){
	if(confirm('댓글을 삭제하시겠습니까?')==true){
		$.ajax({
			type : 'GET',
			url : './rDelete',
			data : {reply_id:reply_id},
			success:function(data){
				alert('댓글이 삭제되었습니다.');
				rCount();
				rList();
			},
			error:function(){
				alert('삭제 실패');
			}
		});
	}else{
		return false;
	}
}
function rUpdate_form(reply_id){
	$.ajax({
		type : 'POST',
		url : './secret',
		data : {reply_id},
		success:function(data){
			var html = "";
				html += "<p class='password' style='float:right'><strong>비밀번호</strong>&nbsp;&nbsp;<input type='password' class='replynum' name='rPw' id='rUpdate_pw'/></p>";
				html += "<textarea class='replyType' name='rContent' id='rUpdate_content'>"+data.secret.rContent+"</textarea>";
				html += "<li class='btn'><a href='javascript:rUpdate("+reply_id+")' class='rebtn'>수정</a>";
				html += "<a href='javascript:rUpdate_cancel()' class='rebtn'>취소</a></li>";
				$('#rUpdate_area'+reply_id).html(html);
		},
		error:function(){
			alert('수정폼 실패');
		}
	});
}
function rUpdate_cancel(){
	if(confirm('댓글 수정을 취소하시겠습니까?')==true){
		rList();
	}else{
		return false;
	}
}
function rUpdate(reply_id){
	if($('#rUpdate_content').val()==""){
		alert('댓글을 작성해주세요.');
		return false;
	}
	if(confirm('수정하시겠습니까?')==true){
		var rContent = $('#rUpdate_content').val();
		var rPw = $('#rUpdate_pw').val();
		$.ajax({
			type : 'POST',
			url : './rUpdate',
			data : {reply_id:reply_id,rContent:rContent,rPw:rPw},
			success:function(data){
				if(data=="success"){
					alert('수정되었습니다.');
					rList();
				}
			},
			error:function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}else{
		alert('수정이 취소되었습니다.');
		rList();
	}
}