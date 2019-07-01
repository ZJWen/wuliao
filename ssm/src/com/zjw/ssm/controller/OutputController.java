package com.zjw.ssm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.xml.transform.OutputKeys;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zjw.ssm.pojo.Output;
import com.zjw.ssm.pojo.ProOutput;
import com.zjw.ssm.service.OutputService;

@Controller
@RequestMapping()
public class OutputController {
	@Autowired
	private OutputService outputService;
	@RequestMapping("SearchOutputServlet")
	public String SearchOutputServlet(Model model) {
		//SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<Output>olist=outputService.findAllOutput();
//		for(int i=0;i<olist.size();i++) {
//			olist.get(i).setOutputtime(sdf.format(olist.get(i).getOutputtime()));
//		}
		model.addAttribute("olist",olist);
		return "searchOutput";
	}
	@RequestMapping("SearchOutputByKeywordServlet")
	public String SearchOutputByKeywordServlet(ProOutput proOutput,Model model) {
		List<Output> oList=outputService.selectStartEndOut(proOutput);
		int countTotal=0;
		for(Output output:oList) {
			countTotal+=output.getPcount();
		}
		model.addAttribute("olist",oList);
		model.addAttribute("countTotal",countTotal);
		return "searchOutputResult";
		
	}
	@RequestMapping("SearchOutputGroupByServlet")
	public String SearchOutputGroupByServlet(Model model) {
		List<Output>oList=outputService.selectOutputByGroup();
		model.addAttribute("olist",oList);
		int countTotal=0;
		for(Output output:oList) {
			countTotal+=output.getPcount();
		}
		model.addAttribute("countTotal",countTotal);
		return "groupByOutputResult";
	}
}
