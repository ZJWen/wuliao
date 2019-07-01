package com.zjw.ssm.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zjw.ssm.dao.AdminDao;
import com.zjw.ssm.pojo.Admin;
import com.zjw.ssm.service.AdminService;
import com.zjw.ssm.util.MD5Code;

public class Test {

//	public static void main(String []args) {
//
//		//加载配置文件
//		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
//		AdminService service=(AdminService)context.getBean("as");
//		Admin admin5=(Admin)context.getBean("admin");
//		MD5Code md5=new MD5Code();
//		//admin5.setName("");
//		admin5.setId(1);
//		admin5.setPwd(md5.getMD5ofStr("88888"));
//		//admin5.setState(1);
//		service.updateAdmin(admin5);
//		//service.insert(admin5);
//		//int n=1/0;
//		
//	}
}
