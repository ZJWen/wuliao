package com.zjw.ssm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zjw.ssm.pojo.Input;
import com.zjw.ssm.pojo.Output;
import com.zjw.ssm.pojo.Products;
import com.zjw.ssm.pojo.Provider;
import com.zjw.ssm.service.OutputService;
import com.zjw.ssm.service.ProductsService;
import com.zjw.ssm.service.ProviderService;

@Controller
@RequestMapping()
public class ProviderController {
	@Autowired
	private ProviderService providerService;
	@Autowired
	private ProductsService productsService;
	@Autowired
	private OutputService outputService;
	@RequestMapping("allprovider")
	public String AllProvider(Model model,HttpSession session) {
		int id=(int)session.getAttribute("id");
		int flag=(int)session.getAttribute("flag");
		System.out.println("id"+id);
		System.out.println("flag"+flag);
		if (flag==1) {
			List<Provider> providers=providerService.findAllProvider();
			model.addAttribute("proList",providers);
			return "input";
		}else if(flag==2) {
			return "output";
		}else {
			return "showPro";
		}
		
	}
	//断点
	@RequestMapping("insertInput")
	public String insertInput(Input input,HttpSession session) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		input.setInputtime(sdf.format(new Date()));
		providerService.insertInput(input);
		//获取p的值
		Products products=(Products) session.getAttribute("p");
		int pcount=products.getCount();
		products.setCount(pcount+input.getPcount());
		productsService.updateProducts(products);
		return "forward:pList.do";
	}
	@RequestMapping("addGys")
	public String addGys() {
		return "addGys";
	}
	@RequestMapping("insertProvider")
	public String insertProvider(Provider provider) {
		providerService.insertProvider(provider);
		return "forward:allprovider";
		
	}
	//入库查询
		@RequestMapping("SearchInputServlet")
		public String SearchInputServlet(Model model) {
			List<Input>ilist=providerService.findAllInput();
//			int countTotal=providerService.sumCount();
//			double priceTotal=providerService.sumPrice();
//			model.addAttribute("countTotal",countTotal);
//			model.addAttribute("priceTotal",priceTotal);
			List<Provider> providers=providerService.findAllProvider();
			model.addAttribute("proList",providers);
			model.addAttribute("ilist",ilist);
			return "searchInput";
		}
		//出库:断点
		@RequestMapping("AddOutputServlet")
		public String AddOutputServlet(Output output,HttpSession session) {
			Products products2=(Products) session.getAttribute("p");
			//System.out.println("output"+output);
			//System.out.println("produdcts2"+products2);
			int pcount=products2.getCount()-output.getPcount();
			products2.setCount(pcount);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			output.setOutputtime(sdf.format(new Date()));
			outputService.insertOutput(output);
			productsService.updateProducts(products2);
			return "forward:SearchOutputServlet";
		}
		
}
