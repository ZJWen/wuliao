package com.zjw.ssm.service;

import java.util.List;

import com.zjw.ssm.pojo.Output;
import com.zjw.ssm.pojo.ProOutput;

public interface OutputService {
	void insertOutput(Output output);
	List<Output> findAllOutput();
	List<Output> selectStartEndOut(ProOutput proOutput);
	List<Output> selectOutputByGroup();
}
