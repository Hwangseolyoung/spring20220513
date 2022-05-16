package com.choong.spr.mapper;

import java.util.List;

import com.choong.spr.domain.ReplyDto;

public interface ReplyMapper {

	List<ReplyDto> selectReplyBoardId(int id);

	int insertReply(ReplyDto reply);

	int updateReply(ReplyDto reply);

	int deleteReply(int id);

	void deleteReplyByBoard(int id);

}
