package com.zjw.ssm.dao;

import java.util.List;

import com.zjw.ssm.pojo.Output;
import com.zjw.ssm.pojo.ProOutput;

public interface OutputMapper {
	void insertOutput(Output output);
	List<Output> findAllOutput();
	List<Output> selectStartEndOut(ProOutput proOutput);
	List<Output> selectOutputByGroup();
}
