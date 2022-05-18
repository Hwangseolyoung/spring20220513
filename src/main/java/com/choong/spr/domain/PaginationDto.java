package com.choong.spr.domain;


public class PaginationDto {
	
	// 현재 페이지
	private int current;
	// 한 페이지당 게시되는 게시물 수 
	private int countPage;
	// 페이지 리스트에 게시되는 페이지수
	private int pageNum;
	// 전체 게시물수
	private int totalRecords;
	// 첫 페이지 번호
	private int startPage;
	// 페이지 왼쪽
	private int left;
	// 페이지 오른쪽
	private int right;
	// 페이지 마지막
	private int endPage;
	// 이전 버튼
	private int prev;
	// 다음 버튼 
	private int next;
	
	public int getCurrent() {
		return current;
	}
	
	public void setCurrent(int current) {
		this.current = current;
	}
	
	public int getCountPage() {
		return countPage;
	}
	
	public void setCountPage(int countPage) {
		this.countPage = countPage;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	
	public int getTotalRecords() {
		return totalRecords;
	}
	
	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}
	
	public int getstartPage() {
		return startPage;
	}
	
	public void setstartPage(int startPage) {
		this.startPage = startPage;
	}
	
	public int getLeft() {
		return Math.max(current - 3, startPage);
	}
	
	public void setLeft(int left) {
		this.left = left;
	}
	
	public int getRight() {
		return Math.min(current + 3, endPage);
	}
	
	public void setRight(int right) {
		this.right = right;
	}
	
	public int getEndPage() {
		return endPage;
	}
	
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getPrev() {
		return prev - 2;
	}

	public void setPrev(int prev) {
		this.prev = prev;
	}

	public int getNext() {
		return next + 2;
	}

	public void setNext(int next) {
		this.next = next;
	}
	
	
	
	
	
}
