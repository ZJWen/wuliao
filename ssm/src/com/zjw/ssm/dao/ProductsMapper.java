package com.zjw.ssm.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.zjw.ssm.pojo.ProInOutput;
import com.zjw.ssm.pojo.Products;

public interface ProductsMapper {
	List<Products>findAllProducts(RowBounds rowBounds);
	Products findProductsById(int id);
	int selectCount();
	List<Products> findAllProductsByName(String name);
	void updateProducts(Products products);
	int insertProducts(Products products);
	List<Products> findAllProductsNoRow();
	List<Products> findProductsDySQL(Products products);
	
}
