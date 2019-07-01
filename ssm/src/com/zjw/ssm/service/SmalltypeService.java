package com.zjw.ssm.service;

import java.util.List;

import com.zjw.ssm.pojo.Smalltype;

public interface SmalltypeService {
	List<Smalltype>selectByBid(int bid);
	int insertSmalltype(Smalltype smalltype);
}
