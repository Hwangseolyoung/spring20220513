package com.choong.spr.mapper;

import java.util.List;

import com.choong.spr.domain.BoardDto;

public interface BoardMapper {

	List<BoardDto> selectBoard();
	
	int insertBoard(BoardDto board);

	int updateBoard(BoardDto board);

	BoardDto getBoard(int id);


}
