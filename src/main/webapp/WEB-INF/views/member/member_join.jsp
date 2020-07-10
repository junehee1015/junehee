<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> JARDIN SHOP </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="../js/JusoAPI.js"></script>
<script type="text/javascript" src="../js/mJoin.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->

</head>
<body>



<!--익스레이어팝업-->
<div id="ieUser" style="display:none">
	<div class="iewrap">	
		<p class="img"><img src="../images/ico/ico_alert.gif" alt="알림" /></p>
		<p class="txt">IE버전이 낮아 홈페이지 이용에 불편함이 있으므로 <strong>IE9이상이나 다른 브라우저</strong>를 이용해 주세요. </p>
		<ul>
			<li><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank"><img src="../images/ico/ico_ie.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="https://www.google.com/intl/ko/chrome/browser" target="_blank"><img src="../images/ico/ico_chrome.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="http://www.mozilla.org/ko/firefox/new" target="_blank"><img src="../images/ico/ico_mozila.gif" alt="MOZILA 최신브라우저 다운" ></a></li>
			<li><a href="http://www.apple.com/safari" target="_blank"><img src="../images/ico/ico_safari.gif" alt="SAFARI 최신브라우저 다운" ></a></li>
			<li><a href="http://www.opera.com/ko/o/ie-simple" target="_blank"><img src="../images/ico/ico_opera.gif" alt="OPERA 최신브라우저 다운" ></a></li>		
		</ul>
		<p class="btn" onclick="msiehide();"><img src="../images/ico/ico_close.gif" alt="닫기" /></p>
	</div>
</div>
<!--//익스레이어팝업-->
<!--IE 6,7,8 사용자에게 브라우저 업데이터 설명 Div 관련 스크립트-->
 <script type="text/javascript">

     var settimediv = 200000; //지속시간(1000= 1초)
     var msietimer;

     $(document).ready(function () {
         msiecheck();
     });

     var msiecheck = function () {
         var browser = navigator.userAgent.toLowerCase();
         if (browser.indexOf('msie 6') != -1 ||
                browser.indexOf('msie 7') != -1 ||
				 browser.indexOf('msie 8') != -1) {
             msieshow();			 
         }
         else {
             msiehide();
         }
     }

     var msieshow = function () {
        $("#ieUser").show();
        msietimer = setTimeout("msiehide()", settimediv);
     }

     var msiehide = function () {
		$("#ieUser").hide();
        clearTimeout(msietimer);
     }
</script>

<div id="allwrap">
<div id="wrap">

	<div id="header">
		
		<div id="snbBox">
			<h1><img src="../images/txt/logo.gif" alt="JARDIN SHOP" /></h1>
			<div id="quickmenu">
				<div id="mnaviOpen"><img src="../images/btn/btn_mnavi.gif" width="33" height="31" alt="메뉴열기" /></div>
				<div id="mnaviClose"><img src="../images/btn/btn_mnavi_close.gif" width="44" height="43" alt="메뉴닫기" /></div>
				<ul>
					<li><a href="#">EVENT</a></li>
					<li><a href="#">CUSTOMER</a></li>
					<li><a href="#">COMMUNITY</a></li>
				</ul>
			</div>
			<div id="snb">
				<ul>
					<li><a href="#">LOGIN</a></li>
					<li><a href="#">JOIN</a></li>
					<li><a href="#">MY PAGE</a></li>
					<li><a href="#">CART</a></li>
				</ul>

				<div id="search">
					<input type="text" class="searchType" />
					<input type="image" src="../images/btn/btn_main_search.gif" width="23" height="20" alt="검색하기" />
				</div>
			</div>
		</div>
	</div>


	<!-- GNB -->
	<div id="gnb">
		
		<div id="top">
			<ul>
				<li class="brand t1"><a href="#" id="topNavi1">JARDIN’s BRAND</a>
					<ul id="topSubm1">
						<li><a href="#">클래스</a></li>
						<li><a href="#">홈스타일 카페모리</a></li>
						<li><a href="#">드립커피백</a></li>
						<li><a href="#">카페리얼 커피</a></li>
						<li><a href="#">오리지널커피백</a></li>
						<li><a href="#">카페리얼 음료</a></li>
						<li><a href="#">마일드커피백</a></li>
						<li><a href="#">워터커피</a></li>
						<li><a href="#">카페포드</a></li>
						<li><a href="#">모히또파티</a></li>
						<li><a href="#">테이크아웃 카페모리</a></li>
						<li><a href="#">포타제</a></li>
					</ul>
				</li>
				<li class="t2"><a href="#" id="topNavi2">원두</a>
					<ul id="topSubm2">
						<li><a href="#">클래스</a></li>
						<li><a href="#">로스터리샵</a></li>
						<li><a href="#">커피휘엘</a></li>
						<li><a href="#">산지별 생두</a></li>
					</ul>
				</li>
				<li class="t1"><a href="#" id="topNavi3">원두커피백</a>
					<ul id="topSubm3">
						<li><a href="#">드립커피 로스트</a></li>
						<li><a href="#">오리지널커피백</a></li>
						<li><a href="#">마일드커피백</a></li>
					</ul>
				</li>
				<li class="t2"><a href="#" id="topNavi4">인스턴트</a>
					<ul id="topSubm4">
						<li><a href="#">까페모리</a></li>
						<li><a href="#">홈스타일카페모리</a></li>
						<li><a href="#">포타제</a></li>
					</ul>
				</li>
				<li class="t1"><a href="#" id="topNavi5">음료</a>
					<ul id="topSubm5">
						<li><a href="#">까페리얼</a></li>
						<li><a href="#">워터커피</a></li>
						<li><a href="#">모히또</a></li>
					</ul>
				</li>
				<li class="t2"><a href="#" id="topNavi6">커피용품</a>
					<ul id="topSubm6">
						<li><a href="#">종이컵</a></li>
						<li><a href="#">커피필터</a></li>
						<li><a href="#">머신 등</a></li>
					</ul>
				</li>
				<li class="t1"><a href="#" id="topNavi7">선물세트</a></li>
				<li class="t2"><a href="#" id="topNavi8">대량구매</a></li>
			</ul>
		</div>

		<script type="text/javascript">initTopMenu();</script>
	</div>
	<!-- //GNB -->

	<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="#">HOME</a></li>
				<li><a href="#">MEMBERSHIP</a></li>
				<li class="last">회원가입</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<div id="left">
				<div id="title2">MEMBERSHIP<span>멤버쉽</span></div>
				<ul>	
					<li>
					<a href="javascript:go_login()" id="leftNavi1">로그인</a>
					<script type="text/javascript">
						function go_login(){
							alert('페이지를 이동하면 작성중이던 정보는 저장되지 않습니다.');
							if(confirm('정말 이동하시겠습니까?')==true){
								location.href="../login/login";
							}else{
								return
							}
						}
					</script>
					</li>
					<li><a href="#" id="leftNavi2">회원가입</a></li>
					<li>
					<a href="javascript:go_event()" id="leftNavi4">이벤트</a>
					<script type="text/javascript">
						function go_event(){
							alert('페이지를 이동하면 작성중이던 정보는 저장되지 않습니다.');
							if(confirm('정말 이동하시겠습니까?')==true){
								location.href="../event/event";
							}else{
								return
							}
						}
					</script>
					</li>
					<li>
					<a href="javascript:go_prize()" id="leftNavi4">당첨자 발표</a>
					<script type="text/javascript">
						function go_prize(){
							alert('페이지를 이동하면 작성중이던 정보는 저장되지 않습니다.');
							if(confirm('정말 이동하시겠습니까?')==true){
								location.href="../event/prize";
							}else{
								return
							}
						}
					</script>
					</li>
				</ul>			
			</div><script type="text/javascript">initSubmenu(2,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="member">
					<h2><strong>회원가입</strong><span>회원으로 가입하시면 보다 더 다양한 혜택을 누리실 수 있습니다.</span></h2>
					
					<!-- STEP -->
					<div class="stepWrap">
					
					</div>
					<!-- //STEP -->
						

					<div class="attention">
						<ul>
							<li>* 표시된 항목은 필수 항목이므로 반드시 입력하셔야 회원가입이 진행됩니다.</li>
						</ul>
					</div>

					<div class="memberbd">
					<form action="mJoin" name="join_form" method="post">
						<table summary="이름, 아이디, 비밀번호, 비밀번호 확인, 이메일, 이메일수신여부, 주소, 휴대폰, 유선전화, 생년월일 순으로 회원가입 정보를 등록할수 있습니다." class="memberWrite" border="1" cellspacing="0">
							<caption>회원가입 입력</caption>
							<colgroup>
							<col width="22%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>이름 *</span></th>
									<td><input type="text" name="mName" class="w134"></td>
								</tr>
								<tr>
									<th scope="row"><span>아이디 *</span></th>
									<td>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
function id_check(){
	var id_check = /^[a-zA-z0-9_]{4,12}$/;
	var mId = $('#mId').val();
	
	if(!(id_check.test(join_form.mId.value))){
		$('#id_text').text("아이디 형식에 맞지 않습니다.");
		$('#id_text').css("color","#f7703c");
		join_form.mId.value="";	
		join_form.mId.focus();
		return $('#mId2').val(0);
	}
	$.ajax({
		type : 'get',
		url : './id_check',
		data : {mId:mId},
		contentType : 'application/json; charset=UTF-8',
		success:function(data){
			if(data==1){
				$('#id_text').text("사용중인 아이디입니다.");
				$('#id_text').css("color","#f7703c");
				join_form.mId.value="";
				join_form.mId.focus();
				return $('#mId2').val(0);
			}else if(data==0){
				$('#mId2').val(1);
				$('#id_text').text("사용 가능한 아이디입니다.");
				$('#id_text').css("color","#0080ff");
				join_form.mPw.focus();
			}
		},
		error:function(request,status,error){
			alert('중복체크 ajax 실패');
		}
	});
}
</script>
										<ul class="pta">
											<li class="r10"><input type="text" class="w134" name="mId" id="mId"/></li>
											<input type="hidden" id="mId2" value="0">
											<li><a href="javascript:id_check()" class="nbtnMini">중복확인</a></li>
											<li class="pt5" id="id_li">
											<span class="mvalign" id="id_text">아이디는 영문으로 4~16자 까지 가능, 영문, 숫자와 특수기호(_)만 사용 가능</span>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>비밀번호 *</span></th>
									<td>
										<ul class="pta">
											<li class="r10"><input type="password" class="w134" name="mPw" id="mPw"/></li>
											<li><span class="mvalign">※ 영문 / 숫자 / 특수문자를 각각 혼합하여 4~20자 까지 가능.</span></li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>비밀번호 확인 *</span></th>
									<td>
										<ul class="pta">
											<li class="r10"><input type="password" class="w134" name="mPw_check" id="mPw_check"/></li>
											<li>
												<strong><span id="pw_text"></span></strong>
<script type="text/javascript">
$(function(){
	$('#mPw_check').keyup(function(){
		if($('#mPw').val() != $('#mPw_check').val()){
			$('#pw_text').text('* 비밀번호가 일치하지 않습니다.');
			$('#pw_text').css('color','#f7703c');
		}else{
			$('#pw_text').text('* 비밀번호가 일치합니다.');
			$('#pw_text').css('color','#0080ff');
		}
	});
});
</script>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>이메일</span></th>
									<td>
<script type="text/javascript">
$(function(){	
	$(document).ready(function(){
		$('select[name=emailList]').change(function() {
			if($(this).val()=="1"){
				$('#mEmail2').val("");
			} else {
				$('#mEmail2').val($(this).val());
				$("#mEmail2").attr("readonly", true);
			}
		});
	});
});
</script>
										<ul class="pta">
											<li><input type="text" class="w134" name="mEmail1"/></li>
											<li><span class="valign">&nbsp;&nbsp;</span></li>
											<li class="r10">
											<input type="text" class="w134" name="mEmail2" id="mEmail2"/>
											</li>
											<li>
												<select id="emailList" name="emailList">
													<option value="1" selected="selected">직접입력</option>
													<option value="naver.com">naver.com</option>
													<option value="daum.net">daum.net</option>
													<option value="hanmail.net">hanmail.net</option>
													<option value="nate.com">nate.com</option>    
													<option value="yahoo.co.kr">yahoo.co.kr</option>    
													<option value="paran.com">paran.com</option>    
													<option value="empal.com">empal.com</option>    
													<option value="hotmail.com">hotmail.com</option>    
													<option value="korea.com">korea.com</option>    
													<option value="lycos.co.kr">lycos.co.kr</option>    
													<option value="dreamwiz.com">dreamwiz.com</option>    
													<option value="hanafos.com">hanafos.com</option>    
													<option value="chol.com">chol.com</option>    
													<option value="gmail.com">gmail.com</option>    
													<option value="empas.com">empas.com</option>
												</select>&nbsp;&nbsp;&nbsp;
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>이메일 수신여부 *</span></th>
									<td>
										<p>쟈뎅에서 진행되는 이벤트와 쇼핑에 대한 정보를 이메일로 받아보시겠습니까?</p>
										<ul class="question">
											<li>
												<input type="radio" name="mEmail_receive" value="예" id="receive_yes" class="radio_t" checked="checked"/><label for="receive_yes">예</label>
											</li>
											<li>
												<input type="radio" name="mEmail_receive" value="아니요" id="receive_no" class="radio_t"/><label for="receive_no">아니오</label>
											</li>
										</ul>
										<p class="gray">* 거래관련 정보는 고객님의 거래안전을 위하여 이메일 수신거부와 관계없이 발송됩니다.</p>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>주소 *</span></th>
									<td>
										<ul class="pta">
											<li>
												<input type="text" class="w134" name="mAdr_num" id="mAdr_num" onclick="execDaumPostcode()" readonly/>&nbsp;
											</li>
											<li>
											<a href="javascript:execDaumPostcode()	" class="addressBtn"><span>우편번호 찾기</span></a>
											</li>
											<li class="pt5"><input type="text" class="addressType" name="mAdr1" id="mAdr1" onclick="execDaumPostcode()" readonly/></li>
											<li class="pt5"><input type="text" class="addressType" name="mAdr2" id="mAdr2" placeholder="상세주소를 입력해주세요."/></li>
											<li class="cb">
												<span class="mvalign">※ 상품 배송 시 받으실 주소입니다. 주소를 정확히 적어 주세요.</span>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>휴대폰 *</span></th>
									<td>
										<ul class="pta">
											<li>
												<select name="mPhone1">
													<option value="" selected="selected">선택</option>
													<option value="010">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>    
													<option value="019">019</option>    
												</select>
											</li>
											<li>&nbsp;<span class="valign">-</span>&nbsp;</li>
											<li><input type="text" class="w74" maxlength="4" name="mPhone2"/> <span class="valign">-</span>&nbsp;</li>
											<li class="r10"><input type="text" class="w74" maxlength="4" name="mPhone3"/></li>
											<li class="cb pt5"><span class="mvalign">※ SMS 서비스를 받아보시겠습니까?</span></li>
											<li class="pt5">
												<ul class="baseQues">
													<li>
														<input type="radio" name="mSMS" value="예" id="sms_yes" class="radio_t" checked="checked"/><label for="sms_yes">예</label>
													</li>
													<li>
														<input type="radio" name="mSMS" value="아니요" id="sms_no" class="radio_t"/><label for="sms_no">아니오</label>
													</li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>유선전화</span></th>
									<td>
<script type="text/javascript">
$(function(){	
	$(document).ready(function(){
		$('select[name=mTel1]').change(function() {
			if($(this).val()=="x"){
				$('#mTel2').val(" ");
				$("#mTel2").attr("readonly", true);
				$('#mTel3').val(" ");
				$("#mTel3").attr("readonly", true);
			}
		});
	});
});
</script>
										<ul class="pta">
											<li>
												<select name="mTel1" id="mTel1">
													<option value="" selected="selected">선택</option>
													<option value="x">없음</option>
													<option value="02">02</option>
													<option value="031">031</option>
													<option value="032">032</option>
													<option value="033">033</option>
													<option value="041">041</option>
													<option value="042">042</option>
													<option value="043">043</option>
													<option value="051">051</option>
													<option value="052">052</option>
													<option value="053">053</option>
													<option value="054">054</option>
													<option value="055">055</option>
													<option value="061">061</option>
													<option value="062">062</option>
													<option value="063">063</option>
													<option value="064">064</option>
													<option value="070">070</option>
												</select>
											</li>
											<li>&nbsp;<span class="valign">-</span>&nbsp;</li>
											<li><input type="text" class="w74" maxlength="4" name="mTel2" id="mTel2"/> <span class="valign">-</span>&nbsp;</li>
											<li><input type="text" class="w74" maxlength="4" name="mTel3" id="mTel3"/></li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>생년월일</span></th>
									<td>
										<ul class="pta">
											<li>
												<select name="mYear">
													<option value='' selected="selected">선택하세요</option>
													<script type="text/javascript">
													//<![CDATA[
														for(var i=1940; i<=2014; i++){
															document.write("<option value='"+i+"년'>" + i + "년"+ "</option>");	
														};
													//]]>
													</script>
												</select>
											</li>
											<li>&nbsp;<span class="valign">년</span>&nbsp;&nbsp;&nbsp;</li>
											<li>
												<select name="mMonth">
													<option value='' selected="selected">선택하세요</option>
													<script type="text/javascript">
													//<![CDATA[
														for(var i=1; i<=12; i++){
															if(i<10){
																document.write("<option value='"+i+"월'>0" + i + "월"+"</option>");
															}else{
																document.write("<option value='"+i+"월'>" + i + "월"+ "</option>");
															};
														};
													//]]>
													</script>
												</select>
											</li>
											<li>&nbsp;<span class="valign">월</span>&nbsp;&nbsp;&nbsp;</li>
											<li>
												<select name="mDate">
													<option value='' selected="selected">선택하세요</option>
													<script type="text/javascript">
													//<![CDATA[
														for(var i=1; i<=31; i++){
															if(i<10){
																document.write("<option value='"+i+"일'>0" + i + "일"+"</option>");
															}else{
																document.write("<option value='"+i+"일'>" + i + "일"+ "</option>");
															};
														};
													//]]>
													</script>
												</select>
											</li>
											<li class="r20">&nbsp;<span class="valign">일</span></li>
										</ul>
									</td>
								</tr>
							</tbody>
							</table>
						</form>
						</div>
						

					</div>

					
					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>
								<li>
								<a href="javascript:join_cancel()" class="nbtnbig">취소하기</a>
								</li>
								<li>
								<a href="javascript:member_join()" class="sbtnMini">가입하기</a>
								</li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
				</div>
			</div>
			<!-- //contents -->


		</div>
	</div>
	<!-- //container -->




	<div id="footerWrap">
		<div id="footer">
			<div id="fnb">
				<ul>
					<li class="left"><a href="#">개인정보취급방침</a></li>
					<li><a href="#">이용약관</a></li>
					<li class="left"><a href="#">이메일무단수집거부</a></li>
					<li><a href="#">고객센터</a></li>
					<li class="left brand"><a href="#">쟈뎅 브랜드 사이트</a></li>
				</ul>
			</div>
			
			<div id="finfo">
				<div id="flogo"><img src="../images/txt/flogo.gif" alt="JARDIN THE COFFEE CREATOR, SINCE 1984" /></div>
				<address>
					<ul>
						<li>㈜쟈뎅</li>
						<li>대표자 윤영노</li>
						<li class="tnone">주소 서울시 강남구 논현동 4-21번지 영 빌딩</li>
						<li class="webnone">소비자상담실 02)546-3881</li>
						<li>사업자등록번호 211-81-24727</li>
						<li class="tnone">통신판매신고 제 강남 – 1160호</li>
						<li class="copy">COPYRIGHT © 2014 JARDIN <span>ALL RIGHTS RESERVED.</span></li>
					</ul>
				</address>

				<div id="inicis"><img src="../images/ico/ico_inicis.png" alt="이니시스 결제시스템" /></div>
			</div>
		</div>
	</div>



</div>
</div>
</body>
</html>