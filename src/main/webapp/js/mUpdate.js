function member_update(){
	//비밀번호
	var pw_check = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{3,20}$/;
	if(update_form.mPw.value==""){
		alert('새 비밀번호를 입력해주세요.');
		update_form.mPw.focus();
		return false;
	}
	if(!(pw_check.test(update_form.mPw.value))){
		alert('비밀번호 조건에 일치하지 않습니다.');
		update_form.mPw.value="";
		update_form.mPw.focus();
		return false;
	}
	if(update_form.mPw.value!=update_form.mPw_check.value){
		update_form.mPw_check.value="";
		update_form.mPw_check.focus();
		return false;
	}
	
	//이메일 유효성 검사
	var email1_check = /^[a-zA-Z0-9]{1,}$/;
	if(update_form.mEmail1.value==""){
		alert('이메일을 입력해주세요.');
		update_form.mEmail1.focus();
		return false;
	}
	if(!(email1_check.test(update_form.mEmail1.value))){
		alert('이메일은 영문과 숫자만 사용하여 입력해주세요.');
		update_form.mEmail1.value="";
		update_form.mEmail1.focus();
		return false;
	}
	if(update_form.mEmail2.value==""){
		alert('이메일을 입력해주세요.');
		update_form.mEmail2.focus();
		return false;
	}
	var email2_check = /^[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	if(!(email2_check.test(update_form.mEmail2.value))){
		alert('이메일 형식에 맞지 않습니다.');
		update_form.mEmail2.value="";
		update_form.mEmail2.focus();
		return false;
	}
	
	//주소 유효성 검사
	var adr_num_check = /^[0-9]{4,5}$/;
	if(update_form.mAdr_num.value==""){
		alert('우편번호를 입력해주세요.');
		update_form.mAdr_num.focus();
		return false;
	}
	if(!(adr_num_check.test(update_form.mAdr_num.value))){
		alert('우편번호 형식에 맞지 않습니다.');
		update_form.mAdr_num.focus();
		return false;
	}
	if(update_form.mAdr1.value==""){
		alert('주소를 입력해주세요.');
		update_form.mAdr1.focus();
		return false;
	}
	if(update_form.mAdr2.value==""){
		alert('상세주소를 입력해주세요.');
		update_form.mAdr2.focus();
		return false;
	}
	
	
	//휴대폰 유효성 검사
	var num_check = /^[0-9]{2,4}$/;
	if(update_form.mPhone1.value==""){
		alert('휴대폰을 입력해주세요.');
		update_form.mPhone1.focus();
		return false;
	}
	if(update_form.mPhone2.value==""){
		alert('휴대폰을 입력해주세요.');
		update_form.mPhone2.focus();
		return false;
	}
	if(update_form.mPhone3.value==""){
		alert('휴대폰을 입력해주세요.');
		update_form.mPhone3.focus();
		return false;
	}
	if(!(num_check.test(update_form.mPhone2.value))){
		alert('휴대폰 번호를 입력해주세요');
		update_form.mPhone2.value="";
		update_form.mPhone2.focus();
		return false;
	}
	if(!(num_check.test(update_form.mPhone3.value))){
		alert('휴대폰 번호를 입력해주세요');
		update_form.mPhone3.value="";
		update_form.mPhone3.focus();
		return false;
	}
	
	//유선전화 유효성 검사
	if(update_form.mTel1.value==""){
		alert('유선전화를 입력해주세요.');
		update_form.mTel1.focus();
		return false;
	}
	if(update_form.mTel1.value!="x"){
		if(!(num_check.test(update_form.mTel2.value))){
			alert('유선전화를 입력해주세요.');
			update_form.mTel2.value="";
			update_form.mTel2.focus();
			return false;
		}
		if(!(num_check.test(update_form.mTel3.value))){
			alert('유선전화를 입력해주세요.');
			update_form.mTel3.value="";
			update_form.mTel3.focus();
			return false;
		}
	}
	
	if(confirm('수정하시겠습니까?')==true){
		alert('회원님의 정보가 수정되었습니다.');
		update_form.submit();
	}else{
		alert('회원정보수정을 취소합니다.');
		location.href="../login/login";
	}
}
