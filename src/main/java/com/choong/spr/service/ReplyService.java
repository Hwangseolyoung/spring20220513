package com.choong.spr.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.choong.spr.domain.ReplyDto;
import com.choong.spr.mapper.ReplyMapper;

@Service
public class ReplyService {
	
	@Autowired
	private ReplyMapper mapper;

	public List<ReplyDto> listReplyBoardId(int id) {
		
		return mapper.selectReplyBoardId(id);
	}

	public boolean addReply(ReplyDto reply) {
		reply.setInserted(LocalDateTime.now());
		
		int count = mapper.insertReply(reply);
		
		return count == 1;
	}

	public boolean modifyReply(ReplyDto reply) {
		int count = mapper.updateReply(reply);
		return count == 1;
	}

	public boolean removeReplyId(int id) {
		int count = mapper.deleteReply(id);
		return count == 1;
	}
	
	

}
