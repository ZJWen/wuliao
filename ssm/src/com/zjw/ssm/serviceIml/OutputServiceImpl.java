package com.zjw.ssm.serviceIml;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.zjw.ssm.dao.OutputMapper;
import com.zjw.ssm.pojo.Output;
import com.zjw.ssm.pojo.ProOutput;
import com.zjw.ssm.service.OutputService;
@Component
public class OutputServiceImpl implements OutputService{
	@Autowired
	private OutputMapper outputMapper;
	@Override
	public void insertOutput(Output output) {
		outputMapper.insertOutput(output);
	}
	@Override
	public List<Output> findAllOutput() {
		return outputMapper.findAllOutput();
	}
	@Override
	public List<Output> selectStartEndOut(ProOutput proOutput) {
		
		return outputMapper.selectStartEndOut(proOutput);
	}
	@Override
	public List<Output> selectOutputByGroup() {
		// TODO Auto-generated method stub
		return outputMapper.selectOutputByGroup();
	}

}
