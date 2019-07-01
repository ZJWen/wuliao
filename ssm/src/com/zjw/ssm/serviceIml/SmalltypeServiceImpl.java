package com.zjw.ssm.serviceIml;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.zjw.ssm.dao.SmalltypeMapper;
import com.zjw.ssm.pojo.Smalltype;
import com.zjw.ssm.service.SmalltypeService;
@Component
public class SmalltypeServiceImpl implements SmalltypeService{
	@Autowired
	private SmalltypeMapper smalltypeMapper;
	@Override
	public List<Smalltype> selectByBid(int bid) {
		return smalltypeMapper.selectByBid(bid);
	}
	@Override
	public int insertSmalltype(Smalltype smalltype) {
		return smalltypeMapper.insertSmalltype(smalltype);
	}

}
