package com.zjw.ssm.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ProOutput {
	private String name;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date startTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date endTime;
	private String annt;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getAnnt() {
		return annt;
	}
	public void setAnnt(String annt) {
		this.annt = annt;
	}
	@Override
	public String toString() {
		return "ProOutput [name=" + name + ", startTime=" + startTime + ", endTime=" + endTime + ", annt=" + annt + "]";
	}
	
	
}
