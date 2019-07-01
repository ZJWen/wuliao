package com.zjw.ssm.serviceIml;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.zjw.ssm.dao.InputMapper;
import com.zjw.ssm.dao.ProviderMapper;
import com.zjw.ssm.pojo.Input;
import com.zjw.ssm.pojo.Products;
import com.zjw.ssm.pojo.Provider;
import com.zjw.ssm.service.ProviderService;
@Component
public class ProviderServiceImpl implements ProviderService{
	@Autowired
	private ProviderMapper providerMapper;
	@Autowired
	private InputMapper inputMapper;
	
	@Override
	public List<Provider> findAllProvider() {
		return providerMapper.findAllProvider();
	}

	@Override
	public void insertInput(Input input) {
		inputMapper.insertInput(input);
	}

	@Override
	public void insertProvider(Provider provider) {
		providerMapper.insertProvider(provider);
		
	}

	@Override
	public List<Input> findAllInput() {
		return inputMapper.findAllInput();
	}

	@Override
	public int sumCount() {
		return inputMapper.sumCount();
	}

	@Override
	public double sumPrice() {
		return inputMapper.sumPrice();
	}

	

	
	
	
	


}
