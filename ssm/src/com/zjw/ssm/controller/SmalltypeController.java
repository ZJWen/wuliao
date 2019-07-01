package com.zjw.ssm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.zjw.ssm.pojo.Smalltype;
import com.zjw.ssm.service.SmalltypeService;
@Controller
@RequestMapping("smalltype")
public class SmalltypeController {
	@Autowired
	private SmalltypeService smalltypeService;
	@RequestMapping("selectByBid")
	public void selectByBid(Integer bid,HttpServletResponse response){
	List<Smalltype> small_list = smalltypeService.selectByBid(bid);
	System.out.println("hfkdfhksvndksf");
	//System.out.println("sssss:" + small_list.size());
	JSONArray array = new JSONArray(); //创建json数组
	for(Smalltype small : small_list){
		JSONObject jobj = new JSONObject();//json对象
		try {
			jobj.put("sid", small.getId());
			jobj.put("sname", small.getName());
			array.add(jobj);
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}
	try {
		//System.out.println("fff:" + array.toString());
		//向页面返回内容
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write(array.toString());
		
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}
	
	
	@RequestMapping("GetAllBigTypeServlet")
	public String GetAllBigTypeServlet() {
		return "addSmallType";
	}
	//添加小类
	@RequestMapping("AddSmallTypeServlet")
	public String AddSmallTypeServlet(Smalltype smalltype) {
		smalltype.setState(1);
		smalltypeService.insertSmalltype(smalltype);
		return "success";
	}
}
