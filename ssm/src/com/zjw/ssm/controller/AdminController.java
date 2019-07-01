package com.zjw.ssm.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import com.zjw.ssm.pojo.Admin;
import com.zjw.ssm.service.AdminService;
import com.zjw.ssm.util.MD5Code;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping()
public class AdminController{
	@Autowired
	private AdminService adminService;
	int count=0;
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	@RequestMapping(value="logincheck")
	public String loginCheck(Admin admin,Map<String, Object> map,HttpSession session) throws IOException, ParseException {
		MD5Code md5Code=new MD5Code();
		admin.setPwd(md5Code.getMD5ofStr(admin.getPwd()));
		Admin admin3=adminService.findAdminByNameAndPwd(admin);
		Admin admin4=adminService.findAdminByName(admin);
		if (admin3!=null) {
			if (admin3.getState()==1||admin3.getState()==-1) {
				map.put("count", 0);
				map.put("admin", admin3);
				session.setAttribute("admin", admin3);
				//request.setAttribute("admin", admin3);
				return "forward:pList.do"; 
			}else {
				if (admin3.getLasttime()==null) {
					map.put("loginError", "用户被冻结");
					map.put("loginName", admin.getName());
				}else {
					 Date now=sdf.parse(sdf.format(new Date()));
					 Date date1=sdf.parse(admin3.getLasttime());
					 if(now.getTime()-date1.getTime()>24*60*60*1000){
				           admin3.setState(1);
				           admin3.setLasttime(null);
				           adminService.updateAdmin(admin3);
				           map.put("admin", admin3);
				           session.setAttribute("admin", admin3);
				           //request.setAttribute("admin", admin3);
				           return "forward:pList.do"; 
				        }
				}
				
			}
		}else {
			if(admin4!=null) {
				map.put("loginError", "密码错误");
				map.put("loginName", admin.getName());
				count++;
				//System.out.println(count);
				map.put("count", count);
				if((int) map.get("count")==3) {
					map.put("loginError", "因账号密码错误三次冻结");
					admin4.setState(0);
					admin4.setLasttime(sdf.format(new Date()));
					//System.out.println(admin4);
					int r=adminService.updateAdmin(admin4);
					//System.out.println(r);
			}if ((int) map.get("count")>3) {
				map.put("loginError", "因账号密码错误三次冻结");
			}
		}else {
			map.put("loginError", "用户名错误");
			map.put("loginName", admin.getName());
		}
	}
		return "login";
	}

	
	@RequestMapping("AdManage.do")
	public String AdManage(Map<String, Object>map) {
		List<Admin> alist=adminService.findAll();
		map.put("alist",alist);
		return "showAdmin";
	}
	@RequestMapping("addAdmin.do")
	public String AddAdmin() {
		return "addAdmin";
	}
	
	@RequestMapping("add.do")
	public String Add(Admin admin) {
		MD5Code md5=new MD5Code();
		admin.setPwd(md5.getMD5ofStr(admin.getPwd()));
		adminService.insertAdmin(admin);
		return "forward:AdManage.do";
	}
	
	@RequestMapping("DeleteAdminServlet")
	public String DeleteAdmin(int id,Map<String, Object>map,HttpSession session) {
		Admin admin=adminService.findById(id);
		Admin admin2=(Admin)session.getAttribute("admin");
		System.out.println(admin2);
		if (id!=admin2.getId()) {
			adminService.deleteAdmin(admin);
		}
		
		return "forward:AdManage.do";
		
	}
	
	@RequestMapping("FindAdminByIdServlet")
	public String UpdateAdmin(int id,Map<String, Object>map) {
		Admin admin=adminService.findById((id));
		map.put("admin", admin);
		return "updateAdmin";
	}
	@RequestMapping("UpdateAdminServlet")
	public String UpdateAdminServlet(Admin admin) {
		System.out.println(admin);
		MD5Code md5Code=new MD5Code();
		admin.setPwd(md5Code.getMD5ofStr(admin.getPwd()));
		adminService.updateAdmin(admin);
		return "forward:AdManage.do";
	}

}

	
		
		

