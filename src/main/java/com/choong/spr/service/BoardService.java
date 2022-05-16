package com.choong.spr.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.choong.spr.domain.BoardDto;
import com.choong.spr.mapper.BoardMapper;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper mapper;

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


}
