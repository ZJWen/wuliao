<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
function changePage(cp)
{
	//给隐藏域设置内容
	document.pageListForm.cp.value = cp;
	
	document.pageListForm.submit();
}

function submitContent(cp)
{
	//给隐藏域设置内容
	document.pageListForm.cp.value = cp;
	document.pageListForm.keyword.value = document.searchForm.keyword.value;
	
	document.searchForm.submit();
}
</script>
<form action="${pageContext.request.contextPath}/${URL }" method="post" name="pageListForm">
<table>			
<tr>
	<td colspan="7">
		<input type="button" value="首页" onclick="changePage(1)" ${p.currentPage==1?"disabled":""}/>
		<input type="button" value="上一页" onclick="changePage(${p.currentPage-1})" ${p.currentPage==1?"disabled":""}/>
		<input type="button" value="下一页" onclick="changePage(${p.currentPage+1})" ${p.currentPage>=p.pageTotal?"disabled":""} />
		<input type="button" value="尾页" onclick="changePage(${p.pageTotal})" ${p.currentPage==p.pageTotal?"disabled":""}/>
		一共有${p.pageTotal }页,当前第${p.currentPage }页，
		<select onchange="changePage(this.value)">
			<c:forEach begin="1" end="${p.pageTotal}" var="i">
				<option value="${i}" ${p.currentPage==i?"selected":"" }>${i}</option>
			</c:forEach>
		</select>
	</td>
</tr>
</table>
	<input type="hidden" name="cp" id="cp" value="${p.currentPage}"/>
	<input type="hidden" name="keyword"  value="${keyword}"/>
	</form>
