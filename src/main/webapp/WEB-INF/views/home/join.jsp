<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<link rel="stylesheet" href="/resources/home/css/board.css">
<link rel="stylesheet" href="/resources/home/css/join.css">
<!-- html5가 아닌 유효성 검사 라이브러리(아래) -->
<script src="/resources/home/js/jquery.validate.js"></script>
<script src="/resources/home/js/additional-methods.js"></script>
<style>
.myinfo {
	width: 170px;
	height: 70px;
	line-height: 70px;
	text-align: center;
	font-size: 18px;
	background: #000;
	color: #fff;
}
.radio_area {
	padding-left: 5px;
    padding-top: 5px;
}
/* 회원탈퇴여부
.radio_area input[type="radio"] {display:none;}
.radio_area label {display: none;}
*/
.gender {
	padding: 4px 10px;
    font-size: 14px;
}
</style>
<script>
$(document).ready(function() {
	$(".appForm").validate({
		rules: {
			user_pw: "required",
			user_pw_chk: {
				equalTo: "#user_pw_lbl"
			}
		}
	});
	$.extend($.validator.messages, {
		required: "필수 항목 입니다.",
		email: "유효하지 않는 Email주소 입니다.",
		digits: "숫자만 입력 가능합니다.",
		equalTo: "비밀번호가 일치하지 않습니다."
	});
});
</script>
<script>
//기존회원아이디가 존재하는지 Ajax확인 후 (RestAPi사용)
//신규아이디일 때만 [회원등록버튼] 활성화시키기, 초기엔 비활성화 시키기
jQuery(document).ready(function(){//$대신에 JQuery를 사용하는 목적: 자바변수$와 혼동을 줄이기 위해
//단점. $간단, jQuery 쓰는게 불편.
//목적2: PHP기반(워드프레스나 카페24쇼핑몰 같은 솔루션에서 JQUery를 쓸사용할 때, $사용하면 작동x. jQuery로 사용해야 작동.) 
	jQuery("#btn_join").attr("disabled", true);//초기에는 서밋버튼 비활성화,
	jQuery("#btn_join").css("opacity", "0.5");//#은 엘리먼트의 id를 선택 시 사용, .은 엘리먼트의 class선택 시 사용
	jQuery("input[name='user_id']").bind("blur",function(){
		//blur액션은 focus선택과는 반대이벤트 = 선택을 벗어났을 때 이벤트
		var user_id = jQuery(this).val();
		if(user_id == "") {
			alert("아이디를 입력해주세요");
			return false;
		}
		jQuery.ajax({
			method:"get",
			url:"id_check?user_id="+user_id,
			dataType:"text",
			success:function(result){
				if(result=='0') {
					alert('사용 가능한 아이디입니다');
					jQuery("#btn_join").attr("disabled", false);
					jQuery("#btn_join").css("opacity", "1");
				}
				if(result=='1') {
					alert('이미 존재하는 아이디입니다');
					jQuery("input[name='user_id']").focus();
					jQuery("#btn_join").attr("disabled", true);
					jQuery("#btn_join").css("opacity", "0.5");
				}
			},
			error:function(result){
				alert('API서버가 작동하지 않습니다.')
			}
		});
	});
});
</script>
<!-- 아래방식말고 다른 방식 -->
<!-- 
<script>
//submit시 인증 대기 상태를 false상태로 전송하기
jQuery(document).ready(function(){
	jQuery("form[name='join_form']").on("submit", function(event){
		event.preventDefault();//서밋이 발생 시 기본전송 중지 아래내용 실행
		jQuery("input[name='enabled']").attr("disabled", false);
		jQuery(this),submit();
	});
});
</script>
 -->
<!-- 메인콘텐츠영역 -->
	<div id="container">
		<!-- 메인상단위치표시영역 -->
		<div class="location_area customer">
			<div class="box_inner">
				<h2 class="tit_page">스프링 <span class="in">in</span> 자바</h2>
				<p class="location">MYPAGE <span class="path">/</span> 회원등록</p>
				<ul class="page_menu clear">
					<li><a href="#" class="on">회원등록</a></li>
				</ul>
			</div>
		</div>	
		<!-- //메인상단위치표시영역 -->

		<!-- 메인본문영역 -->
		<div class="bodytext_area box_inner">
			<!-- 폼영역 -->
			<form method="POST" name="join_form" action="/join" class="appForm">
				<fieldset>
					<legend>회원가입폼</legend>
					<p class="info_pilsoo pilsoo_item">필수입력</p>
					<ul class="app_list">
						<li class="clear">
								<label for="user_id_lbl" class="tit_lbl pilsoo_item">아이디</label>
								<div class="app_content">
								<input value="" type="text" name="user_id" class="w100p" id="user_id_lbl" placeholder="아이디를 입력해주세요" required/></div>
							</li>
							<li class="clear">
							<label for="user_name_lbl" class="tit_lbl pilsoo_item">작성자명</label>
							<div class="app_content">
							<input value="" type="text" name="user_name" class="w100p" id="user_name_lbl" placeholder="이름을 입력해주세요" required/></div>
						</li>
						<li class="clear">
							<label for="email_lbl" class="tit_lbl pilsoo_item">이메일</label>
							<div class="app_content">
							<input value="" type="email" name="email" class="w100p" id="email_lbl" placeholder="이메일을 입력해주세요" required/></div>
						</li>
						
						<li class="clear">
							<label for="user_pw_lbl" class="tit_lbl pilsoo_item">비밀번호</label>
							<div class="app_content">
							<input type="password" name="user_pw" class="w100p" id="user_pw_lbl" placeholder="비밀번호를 입력해주세요" required/>
							</div>
						</li>
						<li class="clear">
							<label for="user_pw_chk_lbl" class="tit_lbl pilsoo_item">비밀번호확인</label>
							<div class="app_content"><input type="password" name="user_pw_chk" class="w100p" id="password_chk_lbl" placeholder="비밀번호를 다시 입력해주세요" required/></div>
						</li>
						<li class="clear">
							<label for="point_lbl" class="tit_lbl pilsoo_item">포인트</label>
							<div class="app_content"><input  readonly value="10" type="digits" name="point" class="w100p" id="point_lbl" placeholder="숫자만 입력해주세요" required/></div>
						</li>
						<li class="clear">
							<label for="gender_lbl" class="tit_lbl pilsoo_item">회원권한</label>
							<div class="app_content radio_area">
								<select name="levels" class="gender">
									<option value="ROLE_USER" selected >일반사용자</option>
								</select>
							</div>
						</li>
						<li class="clear">
							<label for="gender_lbl" class="tit_lbl pilsoo_item">대기여부</label>
							<div class="app_content radio_area">
								<input disabled type="radio" name="" class="css-radio" id="enabled_lbl" />
								<label for="enabled_lbl">관리자 승인</label>
								<input type="hidden" name="enabled" value="0">
							</div>
						</li>
						
						<li class="clear">
							<label for="agree_lbl" class="tit_lbl pilsoo_item">개인정보활용동의</label>
							<div class="app_content checkbox_area"><input disabled type="checkbox" name="agree" class="css-checkbox" id="agree_lbl" required checked/>
							<label for="agree_lbl" class="agree">동의함</label>
							</div>
						</li>
					</ul>
					<p class="btn_line">
					<button type="submit" class="btn_baseColor" id="btn_join">회원등록</button>
					</p>	
				</fieldset>
			</form>
			<!-- //폼영역 -->
		</div>
		<!-- //메인본문영역 -->
	</div>
	<!-- //메이콘텐츠영역 -->

<%@ include file="./include/footer.jsp" %>