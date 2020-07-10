package jo.june.hee.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import jo.june.hee.dto.EventDto;
import jo.june.hee.dto.MemberDto;
import jo.june.hee.dto.PrizeDto;
import jo.june.hee.dto.ReplyDto;

@Repository
public class MemberDaoIm implements MemberDao{
	@Inject
	SqlSession sqlSession;
	
	//로그인
	@Override
	public MemberDto user(MemberDto mDto) {
		return sqlSession.selectOne("mDao.user",mDto);
	}
	//회원가입
	@Override
	public void mInfo_write(MemberDto mDto){
		sqlSession.insert("mDao.mInfo_write",mDto);
	}
	//아이디 중복 검사
	@Override
	public int id_overlap(String mId) {
		return sqlSession.selectOne("mDao.id_overlap",mId);
	}
	//회원정보수정
	@Override
	public int pw_check(MemberDto mDto) {
		return sqlSession.selectOne("mDao.pw_check",mDto);
	}
	@Override
	public void mUpdate(MemberDto mDto) {
		sqlSession.update("mDao.mUpdate",mDto);
	}
	
	
	//이벤트 목록
	@Override
	public List<EventDto> event_list(int startRow,int endRow,String eSearch_opt,String eSearch) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startRow",startRow);
		map.put("endRow",endRow);
		map.put("eSearch_opt",eSearch_opt);
		map.put("eSearch",eSearch);
		return sqlSession.selectList("mDao.event_list",map);
	}
	//이벤트 총 게시물
	@Override
	public int eTotalList(String eSearch_opt,String eSearch) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("eSearch_opt",eSearch_opt);
		map.put("eSearch",eSearch);
		return sqlSession.selectOne("mDao.eTotalList",map);
	}
	//이벤틑 내용
	@Override
	public EventDto event_view(EventDto eDto) {
		return sqlSession.selectOne("mDao.event_view",eDto);
	}
	//이벤트 조회수 증가
	@Override
	public void eUpHtis(EventDto eDto) {
		sqlSession.update("mDao.eUpHits",eDto);
	}
	//이벤트 이전글 다음글
	@Override
	public EventDto ePrev(EventDto eDto) {
		return sqlSession.selectOne("mDao.ePrev",eDto);
	}
	@Override
	public EventDto eNext(EventDto eDto) {
		return sqlSession.selectOne("mDao.eNext",eDto);
	}
	
	
	//당첨자 발표 목록
	@Override
	public List<PrizeDto> prize_list(int startRow,int endRow,String pSearch_opt,String pSearch) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startRow",startRow);
		map.put("endRow",endRow);
		map.put("pSearch_opt",pSearch_opt);
		map.put("pSearch",pSearch);
		return sqlSession.selectList("mDao.prize_list",map);
	}
	//당첨자 발표 총 게시물
	@Override
	public int pTotalList(String pSearch_opt,String pSearch) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pSearch_opt",pSearch_opt);
		map.put("pSearch",pSearch);
		return sqlSession.selectOne("mDao.pTotalList",map);
	}
	//당첨자 발표 내용
	@Override
	public PrizeDto prize_view(PrizeDto pDto) {
		return sqlSession.selectOne("mDao.prize_view",pDto);
	}
	//당첨자 발표 조회수
	@Override
	public void pUpHits(PrizeDto pDto) {
		sqlSession.update("mDao.pUpHits",pDto);
	}
	//당첨자 발표 이전글 다음글
	@Override
	public PrizeDto pPrev(PrizeDto pDto) {
		return sqlSession.selectOne("mDao.pPrev",pDto);
	}
	@Override
	public PrizeDto pNext(PrizeDto pDto) {
		return sqlSession.selectOne("mDao.pNext",pDto);
	}
	
	
	//댓글 목록
	@Override
	public List<ReplyDto> rList(ReplyDto rDto) {
		return sqlSession.selectList("mDao.rList",rDto);
	}
	//댓글 갯수
	@Override
	public int replyCount(ReplyDto rDto) {
		return sqlSession.selectOne("mDao.replyCount",rDto);
	}
	//댓글 작성
	@Override
	public void rWrite(ReplyDto rDto) {
		sqlSession.insert("mDao.rWrite",rDto);
	}
	//비밀글
	@Override
	public ReplyDto secret(int reply_id) {
		return sqlSession.selectOne("mDao.secret",reply_id);
	}
	//댓글 삭제
	@Override
	public void rDelete(int reply_id) {
		sqlSession.delete("mDao.rDelete",reply_id);
	}
	//댓글 수정
	@Override
	public void rUpdate(ReplyDto rDto) {
		sqlSession.update("mDao.rUpdate",rDto);
	}
	

}
