package com.zjw.ssm.service;

import java.util.List;

import javax.annotation.Resource;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.zjw.ssm.dao.AdminDao;
import com.zjw.ssm.dao.AdminMapper;
import com.zjw.ssm.pojo.Admin;



public interface AdminService {

	List<Admin> findAll();
	int updateAdmin(Admin admin);
	Admin findAdminByNameAndPwd(Admin admin);
	Admin findAdminByName(Admin admin);
	void insertAdmin(Admin admin);
	void deleteAdmin(Admin admin);
	Admin findById(int id);
	
}
