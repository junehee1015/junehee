package jo.june.hee.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jo.june.hee.dto.EventDto;
import jo.june.hee.dto.MemberDto;
import jo.june.hee.dto.PrizeDto;
import jo.june.hee.dto.ReplyDto;
import jo.june.hee.service.MemberService;

@Controller
public class TestController {
	@Inject
	MemberService ms;
	
	//로그인
	@RequestMapping("login/login")
	public String login() throws Exception{
		return "login/login";
	}
	@RequestMapping("login/login_check")
	@ResponseBody
	public MemberDto login_check(MemberDto mDto,HttpServletRequest request,HttpSession session) throws Exception {
		return ms.user(mDto,request,session);
	}
	//로그아웃
	@RequestMapping("login/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";
	}
	
	
	//회원가입 폼
	@RequestMapping("member/member_join")
	public String member_join() {
		return "member/member_join";
	}
	//회원가입
	@RequestMapping("member/mJoin")
	public String mJoin(MemberDto mDto,Model model) throws Exception {
		ms.mInfo_write(mDto);
		return "member/join_success";
	}
	@RequestMapping("member/join_success")
	public String join_success() {
		return "member/join_success";
	}
	//아이디 중복확인
 	@RequestMapping("member/id_check")
	@ResponseBody
	public int id_check(String mId) throws Exception{
		return ms.id_overlap(mId);
	}
 	//회원정보 수정
 	@RequestMapping("member/mUpdate_pw")
 	public String mUpdate_pw() {
 		return "member/mUpdate_pw";
 	}
 	@RequestMapping("member/pw_check")
 	@ResponseBody
 	public int pw_check(MemberDto mDto) {
 		return ms.pw_check(mDto);
 	}
 	@RequestMapping("member/memberUpdate")
 	public String memberUpdate() {
 		return "member/memberUpdate";
 	}
 	@RequestMapping("member/mUpdate")
 	public String mUpdate(MemberDto mDto) {
 		ms.mUpdate(mDto);
 		return "login/login";
 	}
	
 	
 	//이벤트
 	@RequestMapping("event/event")
 	public String event(HttpServletRequest request,Model model) throws Exception {
 		String eSearch_opt = request.getParameter("eSearch_opt");
 		String eSearch = request.getParameter("eSearch");
 		if(eSearch == null) {
 			eSearch_opt = "";
 			eSearch = "";
 		}
 		model.addAttribute("eSearch_opt",eSearch_opt);
 		model.addAttribute("eSearch",eSearch);
 		
 		int page = 1; //첫 페이지
 		if(request.getParameter("page") != null) {
 			page = Integer.parseInt(request.getParameter("page"));
 		}
 		int countList = 5; //한  페이지에 출력될 게시물 수
 		int countPage = 5; //출력될 페이지 수
 		int totalList = ms.eTotalList(eSearch_opt,eSearch); //총 게시물 수
 		int totalPage = totalList/countList; //총 필요한 페이지 수
 		if(totalList % countList > 0) {
 			totalPage++;
 		}
 		if(totalPage < page) {
 			page = totalPage;
 		}
 		int startPage = (int)((double)(page - 1) / countList) * countList + 1; //시작 페이지    
 		int endPage = startPage + countPage - 1 ; //마지막 페이지 
 		
 		if(endPage > totalPage) {
 			endPage = totalPage;
 		}
 		
 		int startRow = (page - 1) * countList + 1;
 		int endRow = startRow + countPage - 1;
 		
 		model.addAttribute("event_list",ms.event_list(startRow,endRow,eSearch_opt,eSearch));
 		model.addAttribute("totalList",totalList);
 		model.addAttribute("page",page);
 		model.addAttribute("totalPage",totalPage);
 		model.addAttribute("startPage",startPage);
 		model.addAttribute("endPage",endPage);
 		return "event/event";
 	}
 	//이벤트 내용
 	@RequestMapping("event/event_view")
 	public String event_view(EventDto eDto,Model model) throws Exception {
 		model.addAttribute("event_view",ms.event_view(eDto));
 		model.addAttribute("ePrev",ms.ePrev(eDto));
 		model.addAttribute("eNext",ms.eNext(eDto));
 		return "event/event_view";
 	}
 	
 	
 	//당첨자 발표
 	@RequestMapping("event/prize")
 	public String prize(HttpServletRequest request,Model model) throws Exception {
 		String pSearch_opt = request.getParameter("pSearch_opt");
 		String pSearch = request.getParameter("pSearch");
 		if(pSearch == null) {
 			pSearch_opt="";
 			pSearch="";
 		}
 		model.addAttribute("pSearch_opt",pSearch_opt);
 		model.addAttribute("pSearch",pSearch);
 		int page=1;
 		if(request.getParameter("page")!=null) {
 			page=Integer.parseInt(request.getParameter("page"));
 		}
 		int countList=10;
 		int countPage=10;
 		int totalList=ms.pTotalList(pSearch_opt,pSearch);
 		int totalPage=totalList/countList;
 		if(totalList%countList>0) {
 			totalPage++;
 		}
 		if(totalPage<page) {
 			page=totalPage;
 		}
 		int startPage=(int)((double)(page-1)/countList)*countList+1;
 		int endPage=startPage+countPage-1;
 		if(endPage>totalPage) {
 			endPage=totalPage;
 		}
 		int startRow=(page-1)*countList+1;
 		int endRow=startRow+countPage-1;
 		model.addAttribute("prize_list",ms.prize_list(startRow,endRow,pSearch_opt,pSearch));
 		model.addAttribute("page",page);
 		model.addAttribute("startPage",startPage);
 		model.addAttribute("endPage",endPage);
 		model.addAttribute("totalPage",totalPage);
 		return "event/prize";
 	}
 	//당첨자 발표 내용
 	@RequestMapping("event/prize_view")
 	public String prize_view(PrizeDto pDto,Model model) throws Exception {
 		model.addAttribute("prize_view",ms.prize_view(pDto));
 		model.addAttribute("pPrev",ms.pPrev(pDto));
 		model.addAttribute("pNext",ms.pNext(pDto));
 		return "event/prize_view";
 	}
 	
 	
 	//댓글 리스트
 	@RequestMapping("event/rList")
 	@ResponseBody
 	public Map<String,Object> rList(ReplyDto rDto,HttpSession session) throws Exception{
 		Map<String , Object> map = new HashMap<String, Object>();
 		map.put("rList",ms.rList(rDto));
 		map.put("member",session.getAttribute("member"));
 		return map;
 	}
 	//댓글 갯수
 	@RequestMapping("event/rCount")
 	@ResponseBody
 	public int rCount(ReplyDto rDto) throws Exception {
 		return ms.replyCount(rDto);
 	}
 	//댓글 작성
 	@RequestMapping("event/rWrite")
 	@ResponseBody
 	public String rWrite(ReplyDto rDto) throws Exception {
 		ms.rWrite(rDto);
 		return "success";
 	}
 	@RequestMapping("event/rWrite_check")
 	@ResponseBody
 	public Map<String, Object> rWrite_check(HttpSession session){
 		Map<String, Object> map = new HashMap<String, Object>();
 		map.put("member",session.getAttribute("member"));
 		return map;
 	}
 	//비밀글
 	@RequestMapping("event/secret")
 	@ResponseBody
 	public Map<String,Object> secret(int reply_id,HttpSession session) {
 		Map<String, Object> map = new HashMap<String, Object>();
 		map.put("secret",ms.secret(reply_id));
 		map.put("member",session.getAttribute("member"));
 		return map;
 	}
 	//댓글 삭제
 	@RequestMapping("event/rDelete")
 	@ResponseBody
 	public String rDelete(int reply_id) {
 		ms.rDelete(reply_id);
 		return "success";
 	}
 	//댓글 수정
 	@RequestMapping("event/rUpdate")
 	@ResponseBody
 	public String rUpdate(ReplyDto rDto) {
 		ms.rUpdate(rDto);
 		return "success";
 	}
}
