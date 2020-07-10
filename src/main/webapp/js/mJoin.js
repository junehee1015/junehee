function member_join(){
	//이름 유효성 검사
	var name_check = /^[가-힣]{1,}$/;
	if(join_form.mName.value==""){
		alert('이름을 입력해주세요.');
		join_form.mName.focus();
		return false;
	}
	if(!(name_check.test(join_form.mName.value))){
		alert('이름은 한글만 입력 가능합니다.');
		join_form.mName.value="";
		join_form.mName.focus();
		return false;
	}
	
	//아이디 유효성 검사
	var id_check = /^[a-zA-z0-9_]{4,12}$/;
	if(join_form.mId.value==""){
		alert('아이디를 입력해주세요.');
		join_form.mId.focus();
		return false;
	}
	if($('#mId2').val()!="1"){
		alert('중복확인을 해주세요.');
		join_form.mId.focus();
		return false;
	}
	if(!(id_check.test(join_form.mId.value))){
		$('#id_text').text('중복확인을 다시 해주세요.');
		$('#id_text').css('color','#f7703c');
		return $('#mId2').val(0);
	}
	//비밀번호 유효성 검사
	var pw_check = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{3,20}$/;
	if(join_form.mPw.value==""){
		alert('비밀번호를 입력해주세요.');
		join_form.mPw.focus();
		return false;
	}
	if(!(pw_check.test(join_form.mPw.value))){
		alert('비밀번호 조건에 일치하지 않습니다.');
		join_form.mPw.value="";
		join_form.mPw.focus();
		return false;
	}
	if(join_form.mPw.value!=join_form.mPw_check.value){
		join_form.mPw_check.value="";
		join_form.mPw_check.focus();
		return false;
	}
	
	//이메일 유효성 검사
	var email1_check = /^[a-zA-Z0-9]{1,}$/;
	if(join_form.mEmail1.value==""){
		alert('이메일을 입력해주세요.');
		join_form.mEmail1.focus();
		return false;
	}
	if(!(email1_check.test(join_form.mEmail1.value))){
		alert('이메일은 영문과 숫자만 사용하여 입력해주세요.');
		join_form.mEmail1.value="";
		join_form.mEmail1.focus();
		return false;
	}
	if(join_form.mEmail2.value==""){
		alert('이메일을 입력해주세요.');
		join_form.mEmail2.focus();
		return false;
	}
	var email2_check = /^[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	if(!(email2_check.test(join_form.mEmail2.value))){
		alert('이메일 형식에 맞지 않습니다.');
		join_form.mEmail2.value="";
		join_form.mEmail2.focus();
		return false;
	}
	//주소 유효성 검사
	var adr_num_check = /^[0-9]{4,5}$/;
	if(join_form.mAdr_num.value==""){
		alert('우편번호를 입력해주세요.');
		join_form.mAdr_num.focus();
		return false;
	}
	if(!(adr_num_check.test(join_form.mAdr_num.value))){
		alert('우편번호 형식에 맞지 않습니다.');
		join_form.mAdr_num.focus();
		return false;
	}
	if(join_form.mAdr1.value==""){
		alert('주소를 입력해주세요.');
		join_form.mAdr1.focus();
		return false;
	}
	if(join_form.mAdr2.value==""){
		alert('상세주소를 입력해주세요.');
		join_form.mAdr2.focus();
		return false;
	}
	
	//휴대폰 유효성 검사
	var num_check = /^[0-9]{2,4}$/;
	if(join_form.mPhone1.value==""){
		alert('휴대폰을 입력해주세요.');
		join_form.mPhone1.focus();
		return false;
	}
	if(join_form.mPhone2.value==""){
		alert('휴대폰을 입력해주세요.');
		join_form.mPhone2.focus();
		return false;
	}
	if(join_form.mPhone3.value==""){
		alert('휴대폰을 입력해주세요.');
		join_form.mPhone3.focus();
		return false;
	}
	if(!(num_check.test(join_form.mPhone2.value))){
		alert('휴대폰 번호를 입력해주세요');
		join_form.mPhone2.value="";
		join_form.mPhone2.focus();
		return false;
	}
	if(!(num_check.test(join_form.mPhone3.value))){
		alert('휴대폰 번호를 입력해주세요');
		join_form.mPhone3.value="";
		join_form.mPhone3.focus();
		return false;
	}
	
	//유선전화 유효성 검사
	if(join_form.mTel1.value==""){
		alert('유선전화를 입력해주세요.');
		join_form.mTel1.focus();
		return false;
	}
	if(join_form.mTel1.value!="x"){
		if(!(num_check.test(join_form.mTel2.value))){
			alert('유선전화를 입력해주세요.');
			join_form.mTel2.value="";
			join_form.mTel2.focus();
			return false;
		}
		if(!(num_check.test(join_form.mTel3.value))){
			alert('유선전화를 입력해주세요.');
			join_form.mTel3.value="";
			join_form.mTel3.focus();
			return false;
		}
	}
	
	//생년월일 유효성 검사
	if(join_form.mYear.value==""){
		alert('생년월일을 입력해주세요.');
		return false;
	}
	if(join_form.mMonth.value==""){
		alert('생년월일을 입력해주세요.');
		return false;
	}
	if(join_form.mDate.value==""){
		alert('생년월일을 입력해주세요.');
		return false;
	}
	if(confirm('입력하신 정보가 맞습니까?')==true){
		if(confirm('가입하시겠습니까?')==true){
			alert('가입이 완료되었습니다.'); 
			join_form.submit();
		}else{
			alert('가입이 취소되었습니다.');
			location.replace('../login/login');
		}
	}else{
		return
	}
}
function join_cancel(){
	if(confirm('가입을 취소하시겠습니까?')==true){
		alert('가입이 취소되었습니다.');
		location.replace('../login/login');
	}else{
		return
	}
}