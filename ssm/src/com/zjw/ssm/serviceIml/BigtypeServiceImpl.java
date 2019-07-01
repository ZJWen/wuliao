package com.zjw.ssm.serviceIml;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.zjw.ssm.dao.BigtypeMapper;
import com.zjw.ssm.pojo.Bigtype;
import com.zjw.ssm.service.BigtypeService;
@Component
public class BigtypeServiceImpl implements BigtypeService{
	@Autowired
	private BigtypeMapper bigtypeMapper;
	@Override
	public int insertBigtype(Bigtype bigtype) {
		return bigtypeMapper.insertBigtype(bigtype);
	}
	
}
