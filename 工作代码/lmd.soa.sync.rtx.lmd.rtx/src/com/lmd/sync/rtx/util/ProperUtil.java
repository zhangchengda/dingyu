package com.lmd.sync.rtx.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ProperUtil {
//	private static final String propath="D:/鲁美达工作/公共文件/platform/config/org.properties";
	private static final String propath="C:/RC7-7.3/RC7-7.3/config/org.properties";
	public static String getRtxDeptId(String ptDeptId) {
		/*根据平台里获取的部门Id获取rtx的部门id*/
		Properties props = new Properties();
		String rtxDeptId="";
		try {
			InputStream in = new BufferedInputStream (new FileInputStream(propath));
			props.load(in);
			rtxDeptId = (String) props.get(ptDeptId);
			in.close();
		} catch (FileNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}catch (IOException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return rtxDeptId;
	}
	
	public static void saveOrUpdate(String rtxId,String ptId) {
		/*根据平台里获取的部门Id与rtxId的对应关系写入 或修改文件*/
		Properties props = new Properties();
		String rtxDeptId="";
		try {
			//先读入
			InputStream in = new BufferedInputStream (new FileInputStream(propath));
			props.load(in);
			
			FileOutputStream oFile = new FileOutputStream(propath, false);//true表示追加打开
			props.put(ptId, rtxId);
			props.store(oFile, propath);//重新写入
//			props.storeToXML(oFile, propath);
			oFile.close();
		} catch (FileNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}catch (IOException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
	
	
	public static void main(String[] args) {
		saveOrUpdate("9", "cccc");//写入或修改
		System.out.println(getRtxDeptId("count"));//获取
	}
}
