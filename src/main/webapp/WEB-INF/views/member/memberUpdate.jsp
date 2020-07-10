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
<script type="text/javascript" src="../js/mUpdate.js"></script>
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
					<c:if test="${member!=null }">
						<li>${member.mId }님</li>
						<li><a href="../login/logout">LOGOUT</a></li>
					</c:if>
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
				<li class="last">회원정보수정</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<div id="left">
				<div id="title2">MEMBERSHIP<span>멤버쉽</span></div>
				<ul>	
					<li>
					<a href="../login/logout" id="leftNavi1">로그아웃</a>
					</li>
					<li><a href="#" id="leftNavi2">회원정보수정</a></li>
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
					<h2><strong>회원정보수정</strong><span>회원님의 소중한 정보를 수정해보세요.</span></h2>
					
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
					<form action="mUpdate" name="update_form" method="post">
						<table summary="이름, 아이디, 비밀번호, 비밀번호 확인, 이메일, 이메일수신여부, 주소, 휴대폰, 유선전화, 생년월일 순으로 회원가입 정보를 등록할수 있습니다." class="memberWrite" border="1" cellspacing="0">
							<caption>회원가입 입력</caption>
							<colgroup>
							<col width="22%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>이름 *</span></th>
									<td><input type="text" name="mName" class="w134" value="${member.mName }" readonly></td>
								</tr>
								<tr>
									<th scope="row"><span>아이디 *</span></th>
									<td>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
										<ul class="pta">
											<li class="r10"><input type="text" class="w134" name="mId" id="mId" value="${member.mId }" readonly/></li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>새 비밀번호 *</span></th>
									<td>
										<ul class="pta">
											<li class="r10"><input type="password" class="w134" name="mPw" id="mPw"/></li>
											<li><span class="mvalign">※ 영문 / 숫자 / 특수문자를 각각 혼합하여 4~20자 까지 가능.</span></li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>새 비밀번호 확인 *</span></th>
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
											<li><input type="text" class="w134" name="mEmail1" value="${member.mEmail1 }"/></li>
											<li><span class="valign">&nbsp;&nbsp;</span></li>
											<li class="r10">
											<input type="text" class="w134" name="mEmail2" id="mEmail2" value="${member.mEmail2 }"/>
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
												<input type="text" class="w134" name="mAdr_num" id="mAdr_num" onclick="execDaumPostcode()" value="${member.mAdr_num }" readonly/>&nbsp;
											</li>
											<li>
											<a href="javascript:execDaumPostcode()	" class="addressBtn"><span>우편번호 찾기</span></a>
											</li>
											<li class="pt5"><input type="text" class="addressType" name="mAdr1" id="mAdr1" onclick="execDaumPostcode()" value="${member.mAdr1 }" readonly/></li>
											<li class="pt5"><input type="text" class="addressType" name="mAdr2" id="mAdr2" placeholder="상세주소를 입력해주세요." value="${member.mAdr2 }"/></li>
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
												<input type="text" class="w74" name="mPhone1" value="${member.mPhone1 }" maxlength="4" size="10">
											</li>
											<li>&nbsp;<span class="valign">-</span>&nbsp;</li>
											<li><input type="text" class="w74" maxlength="4" name="mPhone2" value="${member.mPhone2 }"/> <span class="valign">-</span>&nbsp;</li>
											<li class="r10"><input type="text" class="w74" maxlength="4" name="mPhone3" value="${member.mPhone3 }"/></li>
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
	$('#mTel1').keyup(function() {
		if($(this).val()=="x"){
			$('#mTel2').val(" ");
			$("#mTel2").attr("readonly", true);
			$('#mTel3').val(" ");
			$("#mTel3").attr("readonly", true);
		}else{
			$("#mTel2").attr("readonly", false);
			$("#mTel3").attr("readonly", false);
		}
	});
});
</script>
										<ul class="pta">
											<li>
												<input type="text" class="w74" maxlength="3" name="mTel1" id="mTel1" value="${member.mTel1 }">
											</li>
											<li>&nbsp;<span class="valign">-</span>&nbsp;</li>
											<li><input type="text" class="w74" maxlength="4" name="mTel2" id="mTel2" value="${member.mTel2 }"/> <span class="valign">-</span>&nbsp;</li>
											<li><input type="text" class="w74" maxlength="4" name="mTel3" id="mTel3" value="${member.mTel3 }"/></li>
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
								<a href="javascript:mUpdate_cancel()" class="nbtnbig">취소하기</a>
								<script type="text/javascript">
									function mUpdate_cancel(){
										alert('수정중이던 정보는 모두 사라집니다.');
										if(confirm('회원정보수정을 취소하시겠습니까?')==true){
											location.href="../login/login";
										}else{
											return false;
										}
									}
								</script>
								</li>
								<li>
								<a href="javascript:member_update()" class="sbtnMini">수정하기</a>
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