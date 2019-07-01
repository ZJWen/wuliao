package com.zjw.ssm.util;

public class PageUtils {
	public PageUtils(){
		System.out.println("qqqqqqqqqqq");
	}
	private int pageTotal;//总页数
	private int pageSize;//每页显示的记录数
	private int currentPage;//当前页
	private int total;//总记录数
	
	public int getPageTotal() {
		return pageTotal;
	}
	public void setPageTotal(int pageTotal) {
		this.pageTotal = pageTotal;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	
	
}
