package com.choong.spr.domain;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class ReplyDto {
	
	private int id;
	private int boardId;
	private String replyWriter;
	private String content;
	private LocalDateTime inserted;
	private int likeCheck;
	private int likehits;
	

}
