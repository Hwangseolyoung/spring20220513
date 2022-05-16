package com.choong.spr.mapper;

import java.util.List;

import com.choong.spr.domain.BoardDto;

public interface BoardMapper {

	List<BoardDto> selectBoard();
	
	int insertBoard(BoardDto board);

	BoardDto getBoard(int id);
	
	int updateBoard(BoardDto board);

	int deleteBoard(int id);



}
