package com.zjw.ssm.dao;

import java.util.List;

import com.zjw.ssm.pojo.Input;
import com.zjw.ssm.pojo.ProInOutput;
import com.zjw.ssm.pojo.Products;

public interface InputMapper {
	void insertInput(Input input);
	List<Input> findAllInput();
	int sumCount();
	double sumPrice();
	List<Input> selectStartEnd(ProInOutput proInOutput);
	List<Input> selectInputByGroup();
}
