<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>物料库存管理系统</title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/date.js"></script>
    <script type="text/javascript">
    	//通过按钮 实现超链接功能
    	function change(state)
    	{
        	if(state == 1)
        	{
        		window.location.href="OutputDataServlet";
            }
    		else if(state == 3)
        	{
            	window.location.href="SearchInputServlet";
            }
        	else if(state == 4)
        	{
            	window.location.href="SearchOutputServlet";
            }
        	else
        	{
        		window.location.href="GetAllBigType2Servlet";
            }
        }
    	
        	
        	
        	
        	//bigid=document.getElementById("bigtype").value;
       
        function fun1(flag,id)
        {
        	//if(flag == 1)
        	//{
        		window.location.href = "${pageContext.request.contextPath }/FindProByIdServlet?id="+id+"&flag="+flag;
        	//}
        	//else if(flag == 2)
        //	{
        		//window.location.href = "FindProByIdServlet?id="+id+"&flag="+flag;
           // }
           // else
           // {
            	//window.location.href = "FindProByIdServlet?id="+id+"&flag="+flag;
           // }
        }
       	//通过按钮 设置表单提交的action
        function chaxun2(){
        	//1 通过ID获得表单对象
        	var myfrom = document.getElementById("myfrom");
        	//2 设置表单的action
        	myfrom.action = "SearchInputServlet";
        	//3 让表单提交
        	myfrom.submit();
        }
        function changeTypes(bid){
        	//alert(bid);
    		//1、把bid发送到smallcontroller中
    		//2、如果调用成功 则会执行回调函数 并把servlet中返回的数据获得
    		$.getJSON("${pageContext.request.contextPath }/smalltype/selectByBid?bid="+bid,
    		function(data){
    			//清空下拉列表
    			$("#smalltype").empty();
    			//alert(data);
    			//通过ID来控制第二个下拉列表
    			//循环data
    			$.each(data,function(i,obj){
    				$("#smalltype").append("<option value="+obj.sid+">"+obj.sname);
    			});
    		});
        } 
     
        
        
        
        
    </script>
    
  </head>
  <body>
  	<center>
	  	<div>
	  	
	  	<%-- ${admin.state} --%>
	   		<h1>物料库存管理系统</h1>
	   		<h2><font color="blue">
	   			<c:if test="${admin.state==-1}">
		   			<a href="${pageContext.request.contextPath }/AdManage.do">管理员管理</a>
	   			</c:if>
	   		</font></h2>
	   		<table width="900" cellspacing="0" border="1">
	   			<form action="${pageContext.request.contextPath }/selectByName.do" method="post" id="myfrom">
	   				<tr align="center">
	   				<td colspan="8">
	   					大类：<select id="bigtype" name="bid" onchange="changeTypes(this.value)">
   							<option value="0" selected>--请选择--</option>
   								<c:forEach items="${bigList}" var="bt">
				  					<option  value="${bt.id}">${bt.name}</option>
				  				</c:forEach>
   						</select>
   						
   						
   						小类：<select id="smalltype" name="sid">
   								<option value="0" selected>--请选择--</option>
   							</select>
   							<%-- <c:forEach items="${smaList}" var="sma"> --%>
   									<%-- <c:if test="${sma.bid==valOption}"> --%>
                       						<%-- <option value="${sma.bid}">${sma.name}</option> --%>
                    				<%-- </c:if> --%>
				  				<%-- </c:forEach> --%>
   						产品名称：<input name="keyword"/>	
   						<input type="submit" value="查询"/>
	   					<input type="button" value="入库查询" onclick="change(3)"/>
	   					<input type="button" value="出库查询" onclick="change(4)"/>
	   					<input type="button" value="新产品入库" onclick="change(2)"/>
	   					<input type="button" value="导出所有数据" onclick="change(1)"/>
	   				</td>
	   			</tr>
	   			</form>
	   			
	   			<tr bgcolor="#CCCCCC">
	   				<td width="200">产品名称</td>
	   				<td>单位</td>
	   				<td>数量</td>
	   				<td>预警值</td>
	   				<td>更新时间</td> 
	   				<td colspan="3">操作</td>
	   			</tr>
	   			<c:forEach items="${pList}" var="p">
	   			<tr valign="middle">
	   				
	   					<td>${p.name}</td>
		   			
		   				<td>${p.units}</td>
		   				<c:if test="${p.wvalue>=p.count}">
		   					<td bgcolor="red">${p.count }</td>
		   				</c:if>
		   				<c:if test="${p.wvalue<p.count}">
		   					<td>${p.count }</td>
		   				</c:if>
		   				<td>${p.wvalue}</td>
		   				<td>${p.createtime}</td>
		   				<td>
		   					<input type="hidden" value="${p.id}" name="pid" />
		   					<input type="button" value="入库" onclick="fun1(1,${p.id})"/>
		   				</td>
		   				<td>
		   					<input type="button" value="出库" ${p.count==0?"disabled":""} onclick="fun1(2,${p.id})"/>
						</td>
						<td>
		   					<input type="button" value="修改" onclick="fun1(3,${p.id})"/>
						</td>
		   			</tr>
	   				</c:forEach>
	   			
	   		</table>
	   		<jsp:include page="page_list.jsp" />
	   	</div>
   	</center>
  </body>
</html>
