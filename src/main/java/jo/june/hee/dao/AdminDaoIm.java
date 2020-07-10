package jo.june.hee.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import jo.june.hee.dto.MemberDto;

@Repository
public class AdminDaoIm implements AdminDao{
	@Inject
	SqlSession sqlSession;

	@Override
	public List<MemberDto> memberList() {
		return sqlSession.selectList("mapper.memberList");
	}
}
