package com.zjw.ssm.dao;

import javax.annotation.Resource;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.zjw.ssm.pojo.Admin;

public class AdminDao extends SqlSessionDaoSupport{
	//@Autowired
	private Admin admin;
	
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public void insert(Admin admin) {
		//System.out.println("dao insert:"+admin);
		this.getSqlSession().insert("com.zjw.ssm.dao.AdminMapper.insertAdmin",admin);
	}
}
