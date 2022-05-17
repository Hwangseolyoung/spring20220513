package com.choong.spr.domain;


public class PaginationDto {
	
	// 현재 페이지
	private int current;
	// 한 페이지당 게시되는 게시물 수 
	private int countPage;
	// 페이지 리스트에 게시되는 페이지수
	private int pageSize;
	// 전체 게시물수
	private int totalRecords;
	// 첫 페이지 번호
	private int first;
	// 페이지 왼쪽
	private int left;
	// 페이지 오른쪽
	private int right;
	// 페이지 마지막
	private int end;
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
	
	public int getPageSize() {
		return pageSize;
	}
	
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public int getTotalRecords() {
		return totalRecords;
	}
	
	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}
	
	public int getFirst() {
		return first = 1;
	}
	
	public void setFirst(int first) {
		this.first = 1;
	}
	
	public int getLeft() {
		return Math.max(current - 3, first);
	}
	
	public void setLeft(int left) {
		this.left = left;
	}
	
	public int getRight() {
		return Math.min(current + 3, end);
	}
	
	public void setRight(int right) {
		this.right = right;
	}
	
	public int getEnd() {
		return end;
	}
	
	public void setEnd(int end) {
		this.end = end;
	}

	public int getPrev() {
		return prev - 1;
	}

	public void setPrev(int prev) {
		this.prev = prev;
	}

	public int getNext() {
		return next + 1;
	}

	public void setNext(int next) {
		this.next = next;
	}
	
	
	
	
	
}
