package com.zjw.ssm.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.apache.ibatis.session.RowBounds;
import org.apache.tools.ant.taskdefs.condition.And;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zjw.ssm.pojo.Admin;
import com.zjw.ssm.pojo.Bigtype;
import com.zjw.ssm.pojo.Input;
import com.zjw.ssm.pojo.ProInOutput;
import com.zjw.ssm.pojo.Products;
import com.zjw.ssm.pojo.Smalltype;
import com.zjw.ssm.service.AdminService;
import com.zjw.ssm.service.BigtypeService;
import com.zjw.ssm.service.ProductsService;
import com.zjw.ssm.util.ExportExcel;
import com.zjw.ssm.util.PageUtils;

@Controller
@RequestMapping()
public class ProductsController {
	private PageUtils pageUtils=new PageUtils();
	@Autowired
	private ProductsService productsService;
	@Autowired
	private BigtypeService bigtypeService;
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("pList.do")
	public String ProductsList(Map<String, Object>map,Integer cp,HttpSession session,Model model) {
		System.out.println("cp"+cp);
		//Admin admin=(Admin) map.get("admin");
		//map.put("admin", admin);
		//Admin admin=(Admin) session.getAttribute("admin");
		//session.setAttribute("admin", admin);
		pageUtils.setPageSize(20);
		if (cp==null) {
			pageUtils.setCurrentPage(1);
		}else {
			pageUtils.setCurrentPage(cp);
		}
		pageUtils.setTotal(productsService.selectCount());
		int pageTotal=pageUtils.getTotal()%pageUtils.getPageSize()==0?pageUtils.getTotal()/pageUtils.getPageSize():
			pageUtils.getTotal()/pageUtils.getPageSize()+1;
		pageUtils.setPageTotal(pageTotal);
		List<Products>pList=productsService.findAllProducts(new RowBounds((pageUtils.getCurrentPage()-1)*pageUtils.getPageSize(),pageUtils.getPageSize()));
		model.addAttribute("pList",pList);
		model.addAttribute("p", pageUtils);
		model.addAttribute("URL", "pList.do");
		List<Bigtype>bigList=productsService.findAllBigtype();
		session.setAttribute("bigList", bigList);
		//List<Smalltype> smaList=productsService.findAllSmalltype();
		//session.setAttribute("smaList", smaList);
		return "index";
	}
	

	
	@RequestMapping("FindProByIdServlet")
	public String FindProByIdServlet(Integer id,HttpSession session,Model model,int flag) {
		Products products=productsService.findProductsById(id);
		session.setAttribute("id", id);
		session.setAttribute("flag", flag);
		session.setAttribute("p", products);
		return "forward:allprovider";
	}

	//根据输入的名称查值
	@RequestMapping("selectByName.do")
	public String SelectByName(String keyword,Products products,Model model,HttpSession session){
		if (keyword!=null&&keyword!="") {
			List<Products> pList=productsService.findAllProductsByName(keyword);
			if (pList==null) {
				model.addAttribute("msg","获取不到数据请重新加载");
			}else {
				model.addAttribute("pList",pList);
				model.addAttribute("URL", "pList.do");
			}
		}else if(products.getBid()!=0) {
				List<Products> pList=productsService.findProductsDySQL(products);
				model.addAttribute("pList",pList);
				model.addAttribute("URL", "pList.do");
		}else {
			model.addAttribute("msg","无符合条件的数据");
		}
		return "searchResult";
	}
	@RequestMapping("UpdateProductsServlet")
	public String UpdateProductsServlet(Products products) {
		productsService.updateProducts(products);
		return "forward:pList.do";
	}
	@RequestMapping("addBigType")
	public String addBigType() {
		return "addBigType";
	}
	//添加大类
	@RequestMapping("AddBigTypeServlet")
	public String AddBigTypeServlet(Bigtype bigtype,Model model) {
		bigtype.setState(1);
		bigtypeService.insertBigtype(bigtype);
		List<Bigtype>bigList=productsService.findAllBigtype();
		model.addAttribute("bigList",bigList);
		return "showPro";
	}
	//新产品入库
	@RequestMapping("GetAllBigType2Servlet")
	public String GetAllBigType2Servlet() {
		return "newInput";
	}
	//新品入库//添加大类
	@RequestMapping("addBigType1")
	public String newaddBigType() {
		return "addBigType1";
	}
	@RequestMapping("AddBigTypeServlet1")
	public String NewAddBigType(Bigtype bigtype,Model model) {
		bigtype.setState(1);
		bigtypeService.insertBigtype(bigtype);
		List<Bigtype>bigList=productsService.findAllBigtype();
		model.addAttribute("bigList",bigList);
		return "newInput";
	}
	@RequestMapping("AddProductsServlet")
	public String AddProductsServlet(Products products) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		products.setCreatetime(sdf.format(new Date()));
		products.setCount(0);
		products.setState(1);
		productsService.insertProducts(products);
		return "forward:pList.do";
	}
	//导出所有数据
	@RequestMapping("OutputDataServlet")
	public void OutputDataServlet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		List<Products> proList=productsService.findAllProductsNoRow();
		ExportExcel<Products> ee=new ExportExcel<Products>();
		String[] Pheaders = {"id","name","bid","sid","units","count","wvalue","state","createtime"};
		String PfileName="productExcel";
		ee.exportExcel(Pheaders, proList, PfileName, response);
		
//		List<Admin>adList=adminService.findAll();
//		ExportExcel<Admin> ad=new ExportExcel<Admin>();
//		String[] ADheaders = {"id","name","pwd","state","lasttime"};
//		String ADfileName="AdminExcel";
//		ad.exportExcel(ADheaders, adList, ADfileName, response);
		//System.out.println("fdkhfkdsfh");
		//return "success";
	}
	//入库时间段查询
	@RequestMapping("SearchInputByKeywordServlet")
	public String SearchInputByKeywordServlet(ProInOutput proInOutput,Model model) {
		try {
			System.out.println("name"+proInOutput.getName());
			System.out.println("proinoutput"+proInOutput);
			List<Input>iList=productsService.selectStartEnd(proInOutput);
			model.addAttribute("ilist",iList);
			int countTotal=0;
			double priceTotal=0;
			for(Input input:iList) {
				countTotal+=input.getPcount();
				priceTotal+=input.getPrice();
			}
			
			model.addAttribute("countTotal",countTotal);
			model.addAttribute("priceTotal",priceTotal);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "searchInputResult";
	}
	@RequestMapping("SearchInputGroupByServlet")
	public String SearchInputGroupByServlet(Model model) {
		List<Input>nameList=productsService.selectInputByGroup();
		int countTotal=0;
		double priceTotal=0;
		for(Input input:nameList) {
			countTotal+=input.getPcount();
			priceTotal+=input.getPrice();
		}
		model.addAttribute("ilist",nameList);
		model.addAttribute("countTotal",countTotal);
		model.addAttribute("priceTotal",priceTotal);
		return "groupByInputResult";
	}
}
