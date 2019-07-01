package com.zjw.ssm.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.zjw.ssm.pojo.Admin;
import com.zjw.ssm.service.AdminService;



public class TestMybatis {
	
	public static void main(String[] args) throws IOException {
		String resource = "mybatis-config.xml";
		//读取MyBatis配置文件以及加载映射文件
		InputStream is = Resources.getResourceAsStream(resource);
		//构造会话工厂
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(is);
		//创建会话对象
		SqlSession session = sessionFactory.openSession();
		String statement="com.zjw.ssm.dao.AdminMapper."+"findById";
		 //List<Admin> admin=session.selectList(statement);
		//for(Admin admin2:admin) {
		//	System.out.println(admin2);
		//}
		Admin admin=session.selectOne(statement,6);
		//System.out.println(admin);
		String statement2="com.zjw.ssm.dao.AdminMapper."+"findAllByName";
		 List<Admin> admin1=session.selectList(statement2,"强");
		for(Admin admin2:admin1) {
			//System.out.println(admin2);
		}
		//分页有些已知条件
		int pageSize=2;//每页显示的记录数(可用户输入)
		int currentPage=1;//当前页（用户选择的默认第一页）
		
		
		//分页查询
		String statement3="com.zjw.ssm.dao.AdminMapper."+"findAll";
		List<Admin> list=session.selectList(statement3,null,new RowBounds((currentPage-1)*pageSize,pageSize));
		for(Admin admin3:list) {
			//System.out.println(admin3);
		}
//		Admin insertAdmin=new Admin();
//		insertAdmin.setName("樊哙");
//		insertAdmin.setPwd("123456");
//		insertAdmin.setState(1);
//		String statement4="com.zjw.ssm.dao.AdminMapper."+"insertAdmin";
		//int result=session.insert(statement4,insertAdmin);
		//如果是增删改的话则必须要提交事务
		//session.commit();
		//System.out.println(result);
		String statement5="com.zjw.ssm.dao.AdminMapper."+"deleteAdmin";
		//int r=session.delete(statement5,12);
		//System.out.println(r);
		//修改的流程
		//分为两个步骤
		//1.先把内容查询出来
		
		//2.把可以修改的进行修改
//		String statement6="com.zjw.ssm.dao.AdminMapper."+"updateAdmin";
//		Admin updateAdmin=new Admin();
//		updateAdmin.setId(13);
//		updateAdmin.setName("zjw");
//		updateAdmin.setPwd("162");
//		updateAdmin.setState(0);
//		int r=session.update(statement6,updateAdmin);
//		System.out.println(r);
		Admin admin5=new Admin();
		admin5.setId(14);
		admin5.setName("zdf");
		admin5.setPwd("162");
		admin5.setState(0);
		
		//service.insert(admin5);
		
		session.commit();
		session.close();
		
	
	}
}