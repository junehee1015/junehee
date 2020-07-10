package jo.june.hee.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttribute;

import jo.june.hee.dao.MemberDao;
import jo.june.hee.dto.EventDto;
import jo.june.hee.dto.MemberDto;
import jo.june.hee.dto.PrizeDto;
import jo.june.hee.dto.ReplyDto;

@Service
public class MemberServiceIm implements MemberService {
	@Inject
	MemberDao mDao;
	
	//로그인
	@Override
	public MemberDto user(MemberDto mDto,HttpServletRequest request,HttpSession session) throws Exception {
		session = request.getSession();
		MemberDto user = mDao.user(mDto);
		if(user==null) {
			session.setAttribute("member",null);
		}else {
			session.setAttribute("member",user);
		}
		return user;
	}
	//회원가입
	@Override
	public void mInfo_write(MemberDto mDto) throws Exception {
		mDao.mInfo_write(mDto);
	}
	//아이디 중복체크
	@Override
	public int id_overlap(String mId) throws Exception {
		return mDao.id_overlap(mId);
	}
	//회원정보수정
	@Override
	public int pw_check(MemberDto mDto) {
		return mDao.pw_check(mDto);
	}
	@Override
	public void mUpdate(MemberDto mDto) {
		mDao.mUpdate(mDto);
	}
	
	
	//이벤트 목록
	@Override
	public List<EventDto> event_list(int startRow,int endRow,String eSearch_opt,String eSearch) throws Exception {
		return mDao.event_list(startRow,endRow,eSearch_opt,eSearch);
	}
	//이벤트 총 게시물
	@Override
	public int eTotalList(String eSearch_opt,String eSearch) throws Exception {
		return mDao.eTotalList(eSearch_opt,eSearch);
	}
	//이벤트 내용
	@Override
	public EventDto event_view(EventDto eDto) throws Exception {
		mDao.eUpHtis(eDto);//조회수 증가
		mDao.ePrev(eDto);//이전글
		mDao.eNext(eDto);//다음글
		return mDao.event_view(eDto);
	}
	//이벤트 이전글 다음글
	@Override
	public EventDto ePrev(EventDto eDto) throws Exception {
		return mDao.ePrev(eDto);
	}
	@Override
	public EventDto eNext(EventDto eDto) throws Exception {
		return mDao.eNext(eDto);
	}
	
	
	//당첨자 발표 목록
	@Override
	public List<PrizeDto> prize_list(int startRow,int endRow,String pSearch_opt,String pSearch) throws Exception {
		return mDao.prize_list(startRow,endRow,pSearch_opt,pSearch);
	}
	//당첨자 발표 총 게시물
	@Override
	public int pTotalList(String pSearch_opt,String pSearch) throws Exception {
		return mDao.pTotalList(pSearch_opt,pSearch);
	}
	//당첨자 발표 내용
	@Override
	public PrizeDto prize_view(PrizeDto pDto) throws Exception {
		mDao.pUpHits(pDto);//조회수 증가
		mDao.pPrev(pDto);//이전글
		mDao.pNext(pDto);//다음글
		return mDao.prize_view(pDto);
	}
	//당첨자 발표 이전글 다음글
	@Override
	public PrizeDto pPrev(PrizeDto pDto) throws Exception {
		return mDao.pPrev(pDto);
	}
	@Override
	public PrizeDto pNext(PrizeDto pDto) throws Exception {
		return mDao.pNext(pDto);
	}
	
	
	//댓글 목록
	@Override
	public List<ReplyDto> rList(ReplyDto rDto) {
		return mDao.rList(rDto);
	}
	//댓글 갯수
	@Override
	public int replyCount(ReplyDto rDto) throws Exception {
		return mDao.replyCount(rDto);
	}
	//댓글 작성
	@Override
	public void rWrite(ReplyDto rDto) {
		mDao.rWrite(rDto);
	}
	//비밀글
	@Override
	public ReplyDto secret(int reply_id) {
		return mDao.secret(reply_id);
	}
	//댓글 삭제
	@Override
	public void rDelete(int reply_id) {
		mDao.rDelete(reply_id);
	}
	//댓글 수정
	@Override
	public void rUpdate(ReplyDto rDto) {
		mDao.rUpdate(rDto);
	}
	

}
