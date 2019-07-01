package com.zjw.ssm.dao;

import java.util.List;

import org.springframework.beans.factory.parsing.Problem;

import com.zjw.ssm.pojo.Provider;

public interface ProviderMapper {
	List<Provider> findAllProvider();
	void insertProvider(Provider provider);
}
