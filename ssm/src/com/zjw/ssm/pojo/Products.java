package com.zjw.ssm.pojo;

import java.util.Date;

public class Products {
    private Integer id;

    private String name;

    private Integer bid;

    private Integer sid;

    private String units;

    private Integer count;

    private Integer wvalue;

    private Integer state;

    private String createtime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public Integer getSid() {
		return sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getUnits() {
		return units;
	}

	public void setUnits(String units) {
		this.units = units;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Integer getWvalue() {
		return wvalue;
	}

	public void setWvalue(Integer wvalue) {
		this.wvalue = wvalue;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	@Override
	public String toString() {
		return "Products [id=" + id + ", name=" + name + ", bid=" + bid + ", sid=" + sid + ", units=" + units
				+ ", count=" + count + ", wvalue=" + wvalue + ", state=" + state + ", createtime=" + createtime + "]";
	}

   
}