package jo.june.hee.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jo.june.hee.service.AdminService;

@Controller
public class AdminController {
	@Inject
	AdminService as;
	
	@RequestMapping("admin/adminMember")
	public String adminMember(Model model) {
		model.addAttribute("mList",as.memberList());
		return "admin/adminMember";
	}
}
