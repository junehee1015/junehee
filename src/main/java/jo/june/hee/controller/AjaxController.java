package jo.june.hee.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AjaxController {
	@RequestMapping("ajax_page")
	public String ajax_page() {
		return "ajax_page";
	}
	
	@RequestMapping("ajax_view")
	@ResponseBody
	public Map<String, Object> ajax_view(){
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("bNum",1001);
		map.put("bName","홍길동");
		map.put("bTitle","게시글 제목");
		map.put("bContent","게시판 글입니다.");
		map.put("list","list를 호출해서 보내줍니다.");
		return map;
	}
}
