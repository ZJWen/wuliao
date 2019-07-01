package com.zjw.ssm.dao;

import java.util.List;

import com.zjw.ssm.pojo.Smalltype;

public interface SmalltypeMapper {
	List<Smalltype> findAllSmalltype();
	List<Smalltype> selectByBid(int bid);
	int insertSmalltype(Smalltype smalltype);
}
