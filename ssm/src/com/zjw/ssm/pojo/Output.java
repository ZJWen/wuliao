package com.zjw.ssm.pojo;

public class Output {
    private Integer oid;

    private String name;

    private Integer pcount;

    private Double price;

    private String annt;

    private String outputtime;
    
    private String operator;

	public Integer getOid() {
		return oid;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
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

	public String getOutputtime() {
		return outputtime;
	}

	public void setOutputtime(String outputtime) {
		this.outputtime = outputtime;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	@Override
	public String toString() {
		return "Output [oid=" + oid + ", name=" + name + ", pcount=" + pcount + ", price=" + price + ", annt=" + annt
				+ ", outputtime=" + outputtime + ", operator=" + operator + "]";
	}

	

  
}