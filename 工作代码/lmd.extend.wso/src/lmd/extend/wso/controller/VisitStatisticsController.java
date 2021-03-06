package lmd.extend.wso.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lmd.extend.wso.util.JdbcUtil;
import lmd.extend.wso.util.StringtoListMap;

import net.sf.json.JSON;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.appservice.ac.model.Resource;
import egov.appservice.ac.service.ResourceManager;
import egov.appservice.asf.exception.ServiceClientException;
import egov.appservice.asf.service.ServiceClient;
import egov.appservice.asf.service.ServiceClientFactory;

@Controller
@RequestMapping
public class VisitStatisticsController {
	@Autowired
	  private SessionFactory sessionFactory;
	//重定向VisitStatisticsContoller.java  49��ַ
	@RequestMapping({"/redirect.html"})
	public String redirectToSite(HttpServletResponse res, HttpServletRequest req) throws ServiceClientException{
		String rid=req.getParameter("id")==null?"null":req.getParameter("id");
		String username=req.getParameter("username")==null?"null":req.getParameter("username");
		ServiceClient serviceClient = ServiceClientFactory.getServiceClient();
		ResourceManager resourceManager = serviceClient.getServiceByName("ac.ResourceManager");
		Resource resource = resourceManager.getResource(rid);
		String proStr=resource.getProperties();
		String site = resource.getSite();
		if(site.contains("*")){
			site = site.replace("*", username);
		}
		if(site.contains("#")){
			String jp = JdbcUtil.getJianPin(username);
			try {
				site = site.replace("#", jp);
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				//e.printStackTrace();
			}
		}
		try {
			if (null == proStr || "{}".equals(proStr) || "null".equals(proStr) || "".equals(proStr)) {
				resource.setProperties("{\"visitCount\":\"1\"}");
			} else {
				String list = StringtoListMap.toListMap(proStr);
				resource.setProperties(list);
			}
			resourceManager.updateResource(resource);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("重定向VisitStatisticsContoller.java  49��");
		}
		return "redirect:"+site;
	}
	
	public static void main(String[] args) {
		String str="{\"aa\":\"11\"}";
		String jequ = str.replaceAll("\\{", "").replaceAll("\\}", "");
		System.out.println(jequ);
		String[] ary = jequ.split(",");
		System.out.println(ary[1]);
	}
}
