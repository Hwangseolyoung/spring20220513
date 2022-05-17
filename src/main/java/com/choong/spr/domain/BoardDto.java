package com.choong.spr.domain;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class BoardDto {
	
	private int id;
	private String title;
	private String body;
	private LocalDateTime inserted;
	private String writer;
	private int hits;
	
	private int numOfReply;
	
	private String searchKey;

}
