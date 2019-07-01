package com.zjw.ssm.service;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.RowBounds;

import com.zjw.ssm.pojo.Bigtype;
import com.zjw.ssm.pojo.Input;
import com.zjw.ssm.pojo.ProInOutput;
import com.zjw.ssm.pojo.Products;
import com.zjw.ssm.pojo.Smalltype;

public interface ProductsService {
	List<Products>findAllProducts(RowBounds rowBounds);
	Products findProductsById(int id);
	int selectCount();
	List<Products> findAllProductsByName(String name);
	List<Bigtype> findAllBigtype();
	List<Smalltype> findAllSmalltype();
	void updateProducts(Products products);
	int insertProducts(Products products);
	List<Products> findAllProductsNoRow();
	List<Products> findProductsDySQL(Products products);
	List<Input> selectStartEnd(ProInOutput proInOutput);
	List<Input> selectInputByGroup();
}
