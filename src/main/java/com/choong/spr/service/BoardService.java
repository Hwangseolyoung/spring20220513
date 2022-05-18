package com.choong.spr.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.choong.spr.domain.BoardDto;
import com.choong.spr.domain.Criteria;
import com.choong.spr.mapper.BoardMapper;
import com.choong.spr.mapper.ReplyMapper;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	@Autowired
	private ReplyMapper replyMapper;

	public List<BoardDto> listBoard() {
		
		return mapper.selectBoard();
	}

	public BoardDto getBoard(int id) {
		
		return mapper.getBoard(id);
	}

	public boolean addBoard(BoardDto board) {
		board.setInserted(LocalDateTime.now());
		
		int count = mapper.insertBoard(board);
		return count == 1;
	}
	
	public boolean updateBoard(BoardDto board) {
		int count = mapper.updateBoard(board);
		return count == 1;
	}
	
	@Transactional
	public boolean removeBoardId(int id) {
		int count = mapper.deleteBoard(id);
		
		replyMapper.deleteReplyByBoard(id);
		
		return count == 1;
	}



	public int countBoard() {
		return mapper.countBoard();
	}

	public List<BoardDto> searchBoard(String searchBoard, String searchKey) {
		System.out.println(searchBoard);
		System.out.println(searchKey);
		return mapper.selectSearchBoard(searchBoard, searchKey);
	}
	
	// 페이징 처리
	public List<BoardDto> listBoardPage(int page, int countPage) {
		int from = (page - 1) * countPage;
		return mapper.listBoardPage(from, countPage);
	}
	


}
