package com.choong.spr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.choong.spr.domain.BoardDto;

public interface BoardMapper {

	List<BoardDto> selectBoard();
	
	int insertBoard(BoardDto board);

	BoardDto getBoard(int id);
	
	int updateBoard(BoardDto board);

	int deleteBoard(int id);

	List<BoardDto> selectSearchBoard(@Param("board") BoardDto board, @Param("searchKey") String searchKey);

	List<BoardDto> listBoardPage(@Param("from")int page, @Param("row")int countPage);

	int countBoard();



}
