package com.virtusa.rto.grievances;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

public class ajax extends ActionSupport 
{
private String service_type;

ArrayList list1 =new ArrayList();

public String execute() throws Exception 
{
	System.out.println(getService_type());
	
	
	if(getService_type().equals("DRIVING LICENSE"))
	{
		list1.add("Fresh Driving License");
		list1.add("Renewal of License");
		list1.add("Duplicate License");
		list1.add("Update License");
	}
	
	
	
	if(getService_type().equals("REGISTRATION CERTIFICATE"))
	{
		list1.add("New Registration");
		list1.add("Re-Registration");
		list1.add("Transfer of Ownership");
		list1.add("Duplicate RC");
		list1.add("Renewal of RC");
	}
	
	
	if(getService_type().equals("PERMIT"))
	{
		list1.add("New Permit");
		list1.add("Temporary Permit");
		list1.add("Renewal of Permit");
		list1.add("Surrender of Permit");
		list1.add("Variation of Permit");
	}
	if(getService_type().equals("FITNESS CERTIFICATE"))
	{
		list1.add("New F.C");
		list1.add("Renewal of F.C");
		list1.add("Other related to F.C");
	}
	if(getService_type().equals("GENERAL"))
	{
		list1.add("Others");
	}
	System.out.println(list1);
	return "success";
}


@SuppressWarnings("unchecked")
public ArrayList getList1() {
	return list1;
}

public void setList1(ArrayList list1) {
	this.list1 = list1;
}

public String getService_type() {
	return service_type;
}

public void setService_type(String service_type) {
	this.service_type = service_type;
}
}

