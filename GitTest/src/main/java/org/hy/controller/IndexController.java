package org.hy.controller;

import java.util.List;

import org.hy.domain.BoardVO;
import org.hy.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import oracle.jdbc.proxy.annotation.Post;


/**
 * Handles requests for the application home page.
 */
@Controller
public class IndexController {
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	@Autowired
	BoardService ser;
	
	
	@RequestMapping(value = "/index", method = RequestMethod.POST)
	@ResponseBody
	public List<BoardVO> indexPost() throws Exception {
		
		List<BoardVO> list = ser.readALL();
		
		return list;
		
	}
	
	@GetMapping("/index")
	public void indexGet() {
		
		
	}
	
	@PostMapping("/create")
	public String createPost(BoardVO vo) throws Exception {
		
		logger.info(vo.toString());
		
		ser.create(vo);
		
		return "index";
		
	}
	
	@GetMapping("/create")
	public void createGet() {
	}
	
	@GetMapping("/one")
	public void oneGet(@RequestParam("seq_id") String seq_id, Model model) throws Exception{
		
		logger.info(seq_id);
		
		BoardVO vo = ser.readOne(seq_id);
		
		model.addAttribute("one", vo);
		
	}
	
	@PostMapping("/update")
	public void updatePost(BoardVO vo) throws Exception {
		
		ser.update(vo);
		
		
	}
	
	
}
