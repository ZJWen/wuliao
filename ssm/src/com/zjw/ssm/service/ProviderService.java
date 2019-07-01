package com.zjw.ssm.service;

import java.util.List;

import com.zjw.ssm.pojo.Input;
import com.zjw.ssm.pojo.Products;
import com.zjw.ssm.pojo.Provider;

public interface ProviderService {
	List<Provider> findAllProvider();
	void insertInput(Input input);
	void insertProvider(Provider provider);
	List<Input> findAllInput();
	int sumCount();
	double sumPrice();
	
}
