package com.zjw.ssm.pojo;

import org.springframework.stereotype.Component;

@Component("admin")
public class Admin {
	private String name;
	private String pwd;
	private int id;
	private int state;
	private String lasttime;
	
	public Admin() {
		
	}
	
	public Admin(String name, String pwd, int id, int state) {
		super();
		this.name = name;
		this.pwd = pwd;
		this.id = id;
		this.state = state;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	

	public String getLasttime() {
		return lasttime;
	}

	public void setLasttime(String lasttime) {
		this.lasttime = lasttime;
	}

	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		super.finalize();
		//System.out.println("垃圾回收了");
	}

	@Override
	public String toString() {
		return "Admin [name=" + name + ", pwd=" + pwd + ", id=" + id + ", state=" + state + ", lasttime=" + lasttime
				+ "]";
	}

	
	
	
	
	
}
