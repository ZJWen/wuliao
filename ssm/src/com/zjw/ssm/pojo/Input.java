package com.zjw.ssm.pojo;


import java.util.Date;

public class Input {
    private Integer id;

    private String name;

    private Integer pcount;

    private Double dprice;

    private Double price;

    private String annt;
    
    private String operator;

    private String pname;

    private String inputtime;
    
   

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

	public Integer getPcount() {
		return pcount;
	}

	public void setPcount(Integer pcount) {
		this.pcount = pcount;
	}

	public Double getDprice() {
		return dprice;
	}

	public void setDprice(Double dprice) {
		this.dprice = dprice;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getAnnt() {
		return annt;
	}

	public void setAnnt(String annt) {
		this.annt = annt;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getInputtime() {
		return inputtime;
	}

	public void setInputtime(String inputtime) {
		this.inputtime = inputtime;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	
   
}