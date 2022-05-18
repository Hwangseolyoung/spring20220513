package com.choong.spr.domain;

public class PageDto {
	
	private int startPage;
	private int endPage;
	private boolean prev, next;

	private Criteria cri;
	private int total;
	
	public PageDto(Criteria cri, int total) {
		
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;
		
		this.startPage = this.endPage - 9;
		
		int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));
		
		if (realEnd < this.endPage) {
			this.endPage = endPage;
		}
		
		this.prev = this.startPage > 3;
		
		this.next = this.endPage < realEnd;
		
	}
}
