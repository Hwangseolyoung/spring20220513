package com.choong.spr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.choong.spr.domain.BoardDto;
import com.choong.spr.domain.PaginationDto;
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
	
	/*
	// 게시물 list
	@GetMapping("list")
	public void listboard(Model model) {
		List<BoardDto> list = service.listBoard();
		
		model.addAttribute("boardList", list);
		
	}
	*/
	
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
	
	// 게시물 + 댓글 list view
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
		System.out.println(id);
		boolean success = service.removeBoardId(id);
		if(success) {
			rttr.addFlashAttribute("message", "삭제되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "다시 시도해주세요.");
		}
		
		return "redirect:/board/list";
	}
	
	// 게시물 검색
	@GetMapping("search")
	public String searchBoard(@RequestParam("searchKey") String searchKey, @RequestParam("searchBoard") String searchBoard, Model model) {
		List<BoardDto> list = service.searchBoard(searchBoard, searchKey);
		
		model.addAttribute("searchKey", searchKey);
		model.addAttribute("boardList", list);
		
		return "board/list";
	}
	
	// 게시물 페이징 처리
	@GetMapping({"page","list"})
	public void paginationBoard(@RequestParam(name="page", defaultValue = "1") int page, Model model) {
		// 화면에 보여지는 게시물 수 
		int countPage = 20;
		
		List<BoardDto> list = service.listBoardPage(page, countPage);
		
		// 현재 페이지
		int current = page;
		
		// 총 갯수 얻기
		int totalRecords = service.countBoard();
		
		// 페이징 수 10개씩
		int pageNum = 5;
		
		// 마지막 페이지
		int endPage = (totalRecords - 1) / countPage + 1;
		
		// 시작 페이지
		int startPage = endPage - 4;
		
		int left = (current - 1) / 5 * 5 + 1;
		
		int right = left + 4; 
			right = Math.min(right, endPage);
		
		// 양 옆
		int prev = Math.max(current - 2, 1); //0보다 작으면 안되니까
		int next = Math.min(current + 2, endPage);
		
		PaginationDto pagination = new PaginationDto();
		pagination.setCurrent(current);
		pagination.setTotalRecords(totalRecords);
		pagination.setPageNum(pageNum);
		pagination.setEndPage(endPage);
		pagination.setstartPage(page);
		pagination.setPrev(prev);
		pagination.setNext(next);
		pagination.setLeft(left);
		pagination.setRight(right);
		
		model.addAttribute("boardList", list);
		model.addAttribute("pagination", pagination);
		
		
	}
	


}
