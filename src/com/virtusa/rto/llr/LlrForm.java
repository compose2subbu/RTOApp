package com.virtusa.rto.llr;
import java.util.List;
import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;
public class LlrForm extends ActionSupport
{
	
	private static final long serialVersionUID = 1L;
	private List<String> vehicle_types;
	private List address_proofs;
	private List age_proofs;
	//private String llr_form_number;
	private String addressproofnumber;
	private String ageproofnumber;
	private String DDnumber;
	private String Testdate;
	private String vehicletype;
	private String addressprooftype;
	private String ageprooftype;
	
	public String execute() throws Exception
	{
	vehicle_types = new ArrayList<String>();
	vehicle_types.add("2G");
	vehicle_types.add("2WG");
	vehicle_types.add("4G");
	vehicle_types.add("4G");
	vehicle_types.add("4G-BADGE");
	
	address_proofs = new ArrayList();
	address_proofs.add("Ration card");
	address_proofs.add("Passport");	
	
	age_proofs=new ArrayList();
	age_proofs.add("10th certificate");
	age_proofs.add("12th certificate");
	age_proofs.add("Birth certificate");	
	return SUCCESS;	
	
}
	
	public List getVehicle_types() {
		return vehicle_types;
	}
	public void setVehicle_types(List<String> vehicle_types) {
		this.vehicle_types = vehicle_types;
	}

	public List getAddress_proofs() {
		return address_proofs;
	}
	public void setAddress_proofs(final List address_proofs) {
		this.address_proofs = address_proofs;
	}
	public List getAge_proofs() {
		return age_proofs;
	}
	public void setAge_proofs(final List age_proofs) {
		this.age_proofs = age_proofs;
	}

	/**public String getLlr_form_number() {
		return llr_form_number;
	}

	public void setLlr_form_number(String llr_form_number) {
		this.llr_form_number = llr_form_number;
	}*/

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

	public String getDDnumber() {
		return DDnumber;
	}

	public void setDDnumber(String dnumber) {
		DDnumber = dnumber;
	}


	public String getTestdate() {
		return Testdate;
	}

	public void setTestdate(String testdate) {
		Testdate = testdate;
	}

	public String getVehicletype() {
		return vehicletype;
	}

	public void setVehicletype(String vehicletype) {
		this.vehicletype = vehicletype;
	}

	public String getAddressprooftype() {
		return addressprooftype;
	}

	public void setAddressprooftype(String addressprooftype) {
		this.addressprooftype = addressprooftype;
	}

	public String getAgeprooftype() {
		return ageprooftype;
	}

	public void setAgeprooftype(String ageprooftype) {
		this.ageprooftype = ageprooftype;
	}


}


