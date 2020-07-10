<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
$(document).ready(function() {
	


});
</script>
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
					<c:if test="${member==null }">
						<li><a href="../login/login">LOGIN</a></li>
					</c:if>
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
				<li><a href="#">EVENT</a></li>
				<li class="last">이벤트</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<div id="left">
				<div id="title2">EVENT<span>이벤트</span></div>
<c:if test="${member==null }">
				<ul id="login_ul">
					<li><a href="../login/login" id="leftNavi2">로그인</a></li>
					<li>
					<a href="javascript:let_join()" id="leftNavi2">회원가입</a>
					<script type="text/javascript">
						function let_join(){
							if(confirm('회원가입을 진행하시겠습니까?')==true){
								location.href="../member/member_join";
							}else{
								return
							}
						}
					</script>
					</li>
					<li><a href="../event/event" id="leftNavi1">이벤트</a></li>
					<li><a href="prize" id="leftNavi4">당첨자 발표</a></li>
				</ul>			
</c:if>
<c:if test="${member.authority==0 }">
				<ul id="login_ul">
					<li><a href="../login/logout" id="leftNavi2">로그아웃</a></li>
					<li><a href="../member/mUpdate_pw" id="leftNavi3">회원정보수정</a></li>
					<li><a href="../event/event" id="leftNavi1">이벤트</a></li>
					<li><a href="prize" id="leftNavi4">당첨자 발표</a></li>
				</ul>
</c:if>
<c:if test="${member.authority==1 }">
				<ul id="login_ul">
					<li><a href="../login/logout" id="leftNavi2">로그아웃</a></li>
					<li><a href="#" id="leftNavi3">회원정보</a></li>
					<li><a href="#" id="leftNavi1">이벤트관리</a></li>
					<li><a href="#" id="leftNavi4">당첨자 발표 관리</a></li>
				</ul>
</c:if>
			</div><script type="text/javascript">initSubmenu(1,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>이벤트</strong><span>쟈뎅샵의 특별한 혜택이 가득한 이벤트에 참여해 보세요.</span></h2>
					
					<!-- list -->
					<div class="eventList">
						<ul>
							<!-- 반복 -->
							<c:forEach var="event" items="${event_list }">
								<li>
									<div class="img">
										<a href="event_view?event_id=${event.event_id }"><img src="../images/img/sample_event.jpg" alt="진행중 이벤트" /></a>
									</div>
									<div class="txt">
										<div class="subject">
										<jsp:useBean id="now" class="java.util.Date"/>
										<fmt:formatDate value="${now }" pattern="yyyy-MM-dd" var="today"/>
										<fmt:formatDate value="${event.eStart }" pattern="yyyy-MM-dd" var="eStart"/>
										<fmt:formatDate value="${event.eEnd }" pattern="yyyy-MM-dd" var="eEnd"/>
										<c:if test="${today>=eStart && today<eEnd }">
											<span class="ingbtn">진행중</span>
										</c:if>
										<c:if test="${today>eEnd }">
											<span class="finishbtn">종료</span>
										</c:if>
											${event.eTitle }
										</div>
										<div class="day">이벤트 기간 :
										<fmt:formatDate value="${event.eStart }" pattern="yyyy-MM-dd"/>
										  ~
										<fmt:formatDate value="${event.eEnd }" pattern="yyyy-MM-dd"/>
										 </div>
									</div>
								</li>
							</c:forEach>
							<!-- //반복 -->
					<!-- //list -->

					<div class="btnAreaList">
						<!-- 페이징이동1 -->
						<div class="allPageMoving1">

						<a href="event?eSearch_opt=${eSearch_opt }&&eSearch=${eSearch }&&page=1" class="n"><img src="../images/btn/btn_pre2.gif" alt="처음으로"/></a>
						
						<c:if test="${page>1 }">
							<a href="event?eSearch_opt=${eSearch_opt }&&eSearch=${eSearch }&&page=${page-1 }" class="pre"><img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/></a>
						</c:if>
						<c:if test="${page<=1 }">
							<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/>
						</c:if>
						
						<c:forEach var="p" begin="${startPage }" end="${endPage }" step="1">
								<c:if test="${p==page}">
									<strong>${p}</strong>
								</c:if>
								<c:if test="${p!=page }">
									<a href="event?eSearch_opt=${eSearch_opt }&&eSearch=${eSearch }&&page=${p }">${p }</a>
								</c:if>
						</c:forEach> 
						
						<c:if test="${page<totalPage }">
							<a href="event?eSearch_opt=${eSearch_opt }&&eSearch=${eSearch }&&page=${page+1 }" class="next"><img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/></a>
						</c:if>
						<c:if test="${page>=totalPage }">
							<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
						</c:if>
						<a href="event?eSearch_opt=${eSearch_opt }&&eSearch=${eSearch }&&page=${totalPage }" class="n"><img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/></a>

						</div>
						<!-- //페이징이동1 -->
					</div>
					
					<!-- 검색 -->
					<form action="event" method="get">
					<div class="searchWrap">
						<div class="search">
							<ul>
								<li class="web"><img src="../images/txt/txt_search.gif" alt="search" /></li>
								<li class="se">
									<select name="eSearch_opt">
										<option value="all" />전체</option>
										<option value="tit" />제목</option>
										<option value="con" />내용</option>
									</select>
								</li>
								<li><input type="text" class="searchInput" name="eSearch"/></li>
								<li class="web"><input type="submit" value="" class='searchIcon1'></li>
								<li class="mobile"><input type="submit" value="" class='searchIcon2'></li>
							</ul>
						</div>
					</div>
					</form>
					<!-- //검색 -->

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