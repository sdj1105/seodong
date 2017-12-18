package com.co.kr.free.controller;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.co.kr.free.service.FreeService;
import com.co.kr.free.vo.FreeVo;

@Controller
@RequestMapping("/main")
public class FreeController {

	private Log log = LogFactory.getLog(this.getClass());

	@Autowired
	private FreeService freeService;

	@RequestMapping(value="/freeBoard.do", method={RequestMethod.POST, RequestMethod.GET})
	public String freeBoard(@ModelAttribute("freeVo") FreeVo freeVo, Model model) {
		String mainTitle = "자유게시판";

		Map<String, Object> map = freeService.freeBoardList();
		model.addAttribute("boardList", map.get("list"));
//		List<FreeVo> freeVO = freeService.freeBoardList();
		model.addAttribute("mainTitle", mainTitle);
//		model.addAttribute("board", freeVO);
		return "main/free/main";
	}
}
