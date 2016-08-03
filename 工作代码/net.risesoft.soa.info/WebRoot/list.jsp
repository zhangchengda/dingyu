<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="net.risesoft.soa.info.tools.SpringUtil"%>
<%@page import="net.risesoft.soa.ac.manager.AccessControlService"%>
<%@page import="egov.appservice.ac.model.Resource"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="net.risesoft.soa.framework.session.SessionConst"%>
<%@page import="net.risesoft.soa.framework.session.SessionUser"%>
<%
SessionUser sessionUser = (SessionUser)request.getSession().getAttribute(SessionConst.USER);
String id = request.getParameter("id");
List<Resource> resources = new ArrayList<Resource>();
if (sessionUser != null){
	AccessControlService accessControlService = SpringUtil.getBean("accessControlService");
	resources = accessControlService.getSubResources(sessionUser.getUserUID(), "browse", id, null);
}
Resource temp = null;
for(int i = 0; i < resources.size(); i++){ 
	Resource resource = resources.get(i);
	if (i == 0){
		temp = resource;
	}
	String type = resource.getType();
	String img = "images/image" + i%4 + ".png";
	if ("information".equals(type)){
		img = "images/readme.png";
	}
	String url = resource.getUrl();
	if (url != null && url.trim().length() > 0){
		if ("_self".equals(resource.getTarget())){
		%>
			<table border=0 width=147 onclick="javascript:showInfoURL(this);" url="<%=url%>" style="_cursor: pointer; cursor: pointer;" height=84 name="<%=resource.getName()%>">
		<%}else{%>
			<table border=0 width=147 onclick="javascript:window.open('<%=url%>');" style="_cursor: pointer; cursor: pointer;" height=84 id="<%=resource.getUID()%>" type="<%=type%>" name="<%=resource.getName()%>">
		<%}%>
	<%}else{%>
<table border=0 width=147 onclick="javascript:showInfoList1(this);" style="_cursor: pointer; cursor: pointer;" height=84 id="<%=resource.getUID()%>" type="<%=type%>" name="<%=resource.getName()%>">
	<%}%>
	<tr>
		<td align="center" valign="bottom"><img src="<%=img%>" width=40 height=40 border=0 alt=""></td>
	</tr>
	<tr>
		<td align="center" valign="top" style="border-bottom:1px solid #dbe6e6; color:#3a9fe1; font-size:12pt;"><%=resource.getName()%></td>
	</tr>
</table>
<%
	}
%>
<script>
	function showInfoList1(obj){
		$(".active1").removeClass("active1");
		$(obj).addClass("active1"); 
		if ($(obj).attr("type") == "information"){
			$("#infoShow_div").empty();
			$("#infoShow_div").load("/info/index1.jsp",{"infoID":$(obj).attr("id"), "width": "100%"})
		}else{
			$("#infoShow_div").empty();
			$("#infoShow_div").load("list1.jsp",{"id":$(obj).attr("id"), "name":$(obj).attr("name")})
		}
		//$("#leftList_div").load("list.jsp",{"id":$(obj).attr("uuid"),"name":$(obj).attr("name")})
	}
	<%if (temp != null){
		out.println("$('#" + temp.getUID() + "').addClass('active1');");
		if ("information".equals(temp.getType())){
	%>
		$("#infoShow_div").load("/info/index1.jsp",{"infoID":"<%=temp.getUID()%>", "width": "100%"})
		<%}else{%>
		$("#infoShow_div").load("list1.jsp",{"id":"<%=temp.getUID()%>","name":"<%=temp.getName()%>"})
		<%}%>
	<%}%>
	function showInfoURL(obj){
		$(".active1").removeClass("active1");
		$(obj).addClass("active1"); 
		$("#infoShow_div").load($(obj).attr("url"),{"name":$(obj).attr("name")});
	}
</script>
