package com.choong.spr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.choong.spr.domain.BoardDto;
import com.choong.spr.domain.Criteria;

public interface BoardMapper {

	List<BoardDto> selectBoard();
	
	int insertBoard(BoardDto board);

	BoardDto getBoard(int id);
	
	int updateBoard(BoardDto board);

	int deleteBoard(int id);

	List<BoardDto> selectSearchBoard(@Param("searchBoard") String searchBoard, @Param("searchKey") String searchKey);

	List<BoardDto> listBoardPage(int from, int countPage);

	int countBoard();




}
