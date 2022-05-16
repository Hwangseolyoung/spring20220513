package com.choong.spr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.choong.spr.domain.BoardDto;
import com.choong.spr.domain.ReplyDto;
import com.choong.spr.service.BoardService;
import com.choong.spr.service.ReplyService;

@Controller
@RequestMapping("board")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private ReplyService replyService;
	
	// 게시물 list
	@GetMapping("list")
	public void listboard(Model model) {
		List<BoardDto> list = service.listBoard();
		
		model.addAttribute("boardList", list);
		
	}
	
	// 게시물 작성
	@GetMapping("write")
	public void writeBoard() {
		
	}
	
	@PostMapping("write")
	public String writeBoardProcess(BoardDto board, RedirectAttributes rttr) {
		boolean success = service.addBoard(board);
		
		if(success) {
			rttr.addFlashAttribute("message", "새 글이 등록되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "다시 작성해 주세요!");
		}
		
		// int id = 1;
		System.out.println(board);
		return "redirect:/board/get/" + board.getId();
		
	}
	
	// 게시물 view
	@GetMapping("get/{id}")
	public String getBoard(@PathVariable("id") int id, Model model) {
		BoardDto dto = service.getBoard(id);
		
		List<ReplyDto> replyList = replyService.listReplyBoardId(id);
		model.addAttribute("board", dto);
		model.addAttribute("replyList", replyList);
		
		return "board/get";
	}
	
	// 게시물 수정
	@PostMapping("modify")
	public String modifyBoard(BoardDto board, RedirectAttributes rttr) {
		boolean success = service.updateBoard(board);
		
		if(success) {
			rttr.addFlashAttribute("message", "게시물 수정 완료!");
		} else {
			rttr.addFlashAttribute("message", "다시 수정해주세요!");
		}
		
		return "redirect:/board/get/" + board.getId();
	}
	
	// 게시물 삭제
	@PostMapping("remove")
	public String removeBoard(int id, RedirectAttributes rttr) {
		boolean success = service.removeBoardId(id);
		
		if(success) {
			rttr.addFlashAttribute("message", "삭제되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "다시 시도해주세요.");
		}
		
		return "redirect:/board/list";
	}
	

}
