package jo.june.hee.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import jo.june.hee.dao.AdminDao;
import jo.june.hee.dto.MemberDto;

@Service
public class AdminServiceIm implements AdminService{
	@Inject
	AdminDao ad;

	@Override
	public List<MemberDto> memberList() {
		return ad.memberList();
	}
}
