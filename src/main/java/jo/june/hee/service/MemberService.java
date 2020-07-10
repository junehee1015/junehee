package jo.june.hee.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import jo.june.hee.dto.EventDto;
import jo.june.hee.dto.MemberDto;
import jo.june.hee.dto.PrizeDto;
import jo.june.hee.dto.ReplyDto;

public interface MemberService {
	//로그인
	public MemberDto user(MemberDto mDto,HttpServletRequest request,HttpSession session) throws Exception;
	//회원가입
	public void mInfo_write(MemberDto mDto) throws Exception;
	//아이디 중복확인
	public int id_overlap(String mId) throws Exception;
	//회원정보수정
	public int pw_check(MemberDto mDto);
	public void mUpdate(MemberDto mDto);
	
	
	//이벤트 목록
	public List<EventDto> event_list(int startRow,int endRow,String eSearch_opt,String eSearch) throws Exception;
	//이벤트 총 게시물
	public int eTotalList(String eSearch_opt,String eSearch) throws Exception;
	//이벤트 내용
	public EventDto event_view(EventDto eDto) throws Exception;
	//이벤트 이전글 다음글
	public EventDto ePrev(EventDto eDto) throws Exception;
	public EventDto eNext(EventDto eDto) throws Exception;
	
	
	//당첨자 발표 목록
	public List<PrizeDto> prize_list(int startRow,int endRow,String pSearch_opt,String pSearch) throws Exception;
	//당첨자 발표 총 게시물
	public int pTotalList(String pSearch_opt,String pSearch) throws Exception;
	//당첨자 발표 내용
	public PrizeDto prize_view(PrizeDto pDto) throws Exception;
	//당첨자 발표 이전글 다음글
	public PrizeDto pPrev(PrizeDto pDto) throws Exception;
	public PrizeDto pNext(PrizeDto pDto) throws Exception;
	
	
	//댓글 리스트
	public List<ReplyDto> rList(ReplyDto rDto);
	//댓글 갯수
	public int replyCount(ReplyDto rDto) throws Exception;
	//댓글 작성
	public void rWrite(ReplyDto rDto);
	//비밀글
	public ReplyDto secret(int reply_id);
	//댓글 삭제
	public void rDelete(int reply_id);
	//댓글 수정
	public void rUpdate(ReplyDto rDto);
	
}

