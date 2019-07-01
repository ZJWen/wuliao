package com.zjw.ssm.serviceIml;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjw.ssm.dao.AdminMapper;
import com.zjw.ssm.pojo.Admin;
import com.zjw.ssm.service.AdminService;
@Component
@Transactional
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminMapper adminMapper;

	@Override
	public List<Admin> findAll() {
		List<Admin> adminList=adminMapper.findAll();
		return adminList;
	}

	@Override
	public int updateAdmin(Admin admin) {
		return adminMapper.updateAdmin(admin);
	}

	@Override
	public Admin findAdminByNameAndPwd(Admin admin) {
		return adminMapper.findAdminByNameAndPwd(admin);
	}

	@Override
	public Admin findAdminByName(Admin admin) {
		return adminMapper.findAdminByName(admin);
	}

	@Override
	public void insertAdmin(Admin admin) {
		adminMapper.insertAdmin(admin);
	}

	@Override
	public void deleteAdmin(Admin admin) {
		adminMapper.deleteAdmin(admin);
		
	}

	@Override
	public Admin findById(int id) {
		return adminMapper.findById(id);
	}
	

}
