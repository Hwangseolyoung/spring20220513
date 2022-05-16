package com.choong.spr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.choong.spr.domain.BoardDto;
import com.choong.spr.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("list")
	public void listboard(Model model) {
		List<BoardDto> list = service.listBoard();
		
		model.addAttribute("boardList", list);
		
	}
	
	@GetMapping("write")
	public void writeBoard() {
		
	}
	
	@PostMapping("write")
	public String writeBoardProcess(BoardDto board ) {
		boolean success = service.addBoard(board);
		
		if(success) {
			
		} else {
			
		}
		
		// int id = 1;
		System.out.println(board);
		return "redirect:/board/get/" + board.getId();
		
	}

	@GetMapping("get/{id}")
	public String getBoard(@PathVariable("id") int id, Model model) {
		BoardDto dto = service.getBoard(id);
		
		model.addAttribute("Board", dto);
		
		return "board/get";
	}
	
	

}
