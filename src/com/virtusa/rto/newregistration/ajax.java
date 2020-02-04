package com.virtusa.rto.newregistration;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;

public class ajax extends ActionSupport 
{
private String type;

ArrayList list1 =new ArrayList();

public String execute() throws Exception 
{
	System.out.println(getType());
	if(getType().equals("2-Wheeler"))
	{
		list1.add("2-WithGear");
		list1.add("2-WithoutGear");
		list1.add("2-Under 50cc");
		
		
	}
	if(getType().equals("4-Wheeler"))
	{
		list1.add("4- commercial-lmw");
		list1.add("4- personal-lmv");
		list1.add("4- commercial-hmv");
		list1.add("4- personal-hmv");
	}
	System.out.println(list1);
	return "success";
}

public String getType() {
	return type;
}

public void setType(String type) {
	this.type = type;
}
@SuppressWarnings("unchecked")
public ArrayList getList1() {
	return list1;
}

public void setList1(ArrayList list1) {
	this.list1 = list1;
}
}

