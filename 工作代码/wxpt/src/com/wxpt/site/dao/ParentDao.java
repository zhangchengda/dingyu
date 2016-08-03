package com.wxpt.site.dao;

import java.util.List;

public interface ParentDao {
	public void add(int enterId,Object o);
	
	public void update(int enterId,Object o);
	public void delete(Object o);
	public List<Object> objectList(Object o);
	public int getCount(String hql);
	
	//取消回复设置
	public void clearReply(String sql,int enterId);

	public int getCountBySql(String sql);
}
