package com.zjw.ssm.dao;

import java.util.List;

import com.zjw.ssm.pojo.Bigtype;

public interface BigtypeMapper {
	List<Bigtype> findAllBigtype();
	int insertBigtype(Bigtype bigtype);
}
