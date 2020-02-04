package com.virtusa.rto.llr;

import java.util.List;

public class LlrPojo 
{
private String llr_form_number;
private String addressproofnumber;
private String ageproofnumber;
private String vehicletype;
private String addressprooftype;
private String ageprooftype;
private String DDnumber;
private String Testdate;


public String getTestdate() {
	return Testdate;
}
public void setTestdate(String testdate) {
	Testdate = testdate;
}
public String getDDnumber() {
	return DDnumber;
}
public void setDDnumber(String dnumber) {
	DDnumber = dnumber;
}
public String getLlr_form_number() {
	return llr_form_number;
}
public void setLlr_form_number(String llr_form_number) {
	this.llr_form_number = llr_form_number;
}
public String getAddressproofnumber() {
	return addressproofnumber;
}
public void setAddressproofnumber(String addressproofnumber) {
	this.addressproofnumber = addressproofnumber;
}
public String getAgeproofnumber() {
	return ageproofnumber;
}
public void setAgeproofnumber(String ageproofnumber) {
	this.ageproofnumber = ageproofnumber;
}
public String getAddressprooftype() {
	return addressprooftype;
}
public void setAddressprooftype(String addressprooftype) {
	this.addressprooftype = addressprooftype;
}
public final String getAgeprooftype() {
	return ageprooftype;
}
public final void setAgeprooftype(String ageprooftype) {
	this.ageprooftype = ageprooftype;
}
public final String getVehicletype() {
	return vehicletype;
}
public final void setVehicletype(String vehicletype) {
	this.vehicletype = vehicletype;
}
}
