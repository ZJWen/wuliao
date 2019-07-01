package com.zjw.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.zjw.ssm.pojo.Admin;

public interface AdminMapper {
	List<Admin> findAll();
	int updateAdmin(Admin admin);
	Admin findAdminByNameAndPwd(Admin admin);
	Admin findAdminByName(Admin admin);
	void insertAdmin(Admin admin);
	void deleteAdmin(Admin admin);
	Admin findById(int id);
	
}
