package jo.june.hee.dao;

import java.util.List;

import jo.june.hee.dto.EventDto;
import jo.june.hee.dto.MemberDto;
import jo.june.hee.dto.PrizeDto;
import jo.june.hee.dto.ReplyDto;

public interface MemberDao {
	//로그인
	public MemberDto user(MemberDto mDto);
	//회원가입
	public void mInfo_write(MemberDto mDto);
	//아이디 중복검사
	public int id_overlap(String mId);
	//회원정보수정
	public int pw_check(MemberDto mDto);
	public void mUpdate(MemberDto mDto);
	
	
	//이벤트 목록
	public List<EventDto> event_list(int startRow,int endRow,String eSearch_opt,String eSearch);
	//이벤트 총 게시물
	public int eTotalList(String eSearch_opt, String eSearch);
	//이벤트 내용
	public EventDto event_view(EventDto eDto);
	//이벤트 조회수 증가
	public void eUpHtis(EventDto eDto);
	//이벤트 이전글 다음글
	public EventDto ePrev(EventDto eDto);
	public EventDto eNext(EventDto eDto);
	
	
	//당첨자 발표 목록
	public List<PrizeDto> prize_list(int startRow, int endRow, String pSearch_opt, String pSearch);
	//당첨자 발표 내용
	public PrizeDto prize_view(PrizeDto pDto);
	//당첨자 발표 총 게시물
	public int pTotalList(String pSearch_opt, String pSearch);
	//당첨자 발표 조회수
	public void pUpHits(PrizeDto pDto);
	//당첨자 발표 이전글 다음글
	public PrizeDto pPrev(PrizeDto pDto);
	public PrizeDto pNext(PrizeDto pDto);
	
	
	//댓글 목록
	public List<ReplyDto> rList(ReplyDto rDto);
	//댓글 갯수
	public int replyCount(ReplyDto rDto);
	//댓글 작성
	public void rWrite(ReplyDto rDto);
	//비밀글
	public ReplyDto secret(int reply_id);
	//댓글 삭제
	public void rDelete(int reply_id);
	//댓글 수정
	public void rUpdate(ReplyDto rDto);
	
}
