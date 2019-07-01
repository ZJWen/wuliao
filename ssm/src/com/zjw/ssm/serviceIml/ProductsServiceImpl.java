package com.zjw.ssm.serviceIml;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.zjw.ssm.dao.BigtypeMapper;
import com.zjw.ssm.dao.InputMapper;
import com.zjw.ssm.dao.ProductsMapper;
import com.zjw.ssm.dao.SmalltypeMapper;
import com.zjw.ssm.pojo.Bigtype;
import com.zjw.ssm.pojo.Input;
import com.zjw.ssm.pojo.ProInOutput;
import com.zjw.ssm.pojo.Products;
import com.zjw.ssm.pojo.Smalltype;
import com.zjw.ssm.service.ProductsService;
@Component
public class ProductsServiceImpl implements ProductsService{
	@Autowired
	private ProductsMapper productsMapper;
	@Autowired
	private BigtypeMapper bigtypeMapper;
	@Autowired
	private SmalltypeMapper smalltypeMapper;
	@Autowired
	private InputMapper inputMapper;
	@Override
	public List<Products> findAllProducts(RowBounds rowBounds) {
		return productsMapper.findAllProducts(rowBounds);
	}
	@Override
	public Products findProductsById(int id) {
		return productsMapper.findProductsById(id);
	}
	@Override
	public int selectCount() {
		return productsMapper.selectCount();
	}
	@Override
	public List<Products> findAllProductsByName(String name) {
		
		return productsMapper.findAllProductsByName(name);
	}
	@Override
	public List<Bigtype> findAllBigtype() {
		return bigtypeMapper.findAllBigtype();
	}
	@Override
	public List<Smalltype> findAllSmalltype() {
		return smalltypeMapper.findAllSmalltype();
	}
	@Override
	public void updateProducts(Products products) {
		productsMapper.updateProducts(products);
	}
	@Override
	public int insertProducts(Products products) {
		return productsMapper.insertProducts(products);
	}
	@Override
	public List<Products> findAllProductsNoRow() {
		return productsMapper.findAllProductsNoRow();
		
	}
	@Override
	public List<Products> findProductsDySQL(Products products) {
		return productsMapper.findProductsDySQL(products);
	}
	@Override
	public List<Input> selectStartEnd(ProInOutput proInOutput) {
		
		return inputMapper.selectStartEnd(proInOutput);
	}
	@Override
	public List<Input> selectInputByGroup() {
		// TODO Auto-generated method stub
		return inputMapper.selectInputByGroup();
	}
	
	
	
	
}
