package com.virtusa.rto.newregistration;
import com.opensymphony.xwork2.ActionSupport;




public class dbc extends ActionSupport{
	private static final long serialVersionUID = 1L;
	
	private String firstname;
	private String lastname;
	private String gender;
	private String subtype;
	private String address;
	private String pincode;
	private String mobile;
	private String email;
	private String bankname;
	private String insuranceno;
	private String accountno;
	private String engineno;
	private String chasisno;
	private String doa; 
  
	public String execute() {

        
                try{

                  // This step will read hibernate.cfg.xml and prepare hibernate for use
        	      System.out.println("Hai1");                 
	              return "success";              
	               }

         		catch(Exception e)
	            {
	            	System.out.println(e);
	                  e.printStackTrace();
	                  return "error";

	            }
	            
	}
	      

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getInsuranceno() {
		return insuranceno;
	}

	public void setInsuranceno(String insuranceno) {
		this.insuranceno = insuranceno;
	}

	public String getAccountno() {
		return accountno;
	}

	public void setAccountno(String accountno) {
		this.accountno = accountno;
	}

	public String getEngineno() {
		return engineno;
	}

	public void setEngineno(String engineno) {
		this.engineno = engineno;
	}

	public String getChasisno() {
		return chasisno;
	}

	public void setChasisno(String chasisno) {
		this.chasisno = chasisno;
	}

	public String getDoa() {
		return doa;
	}

	public void setDoa(String doa) {
		this.doa = doa;
	}


	public String getSubtype() {
		return subtype;
	}


	public void setSubtype(String subtype) {
		this.subtype = subtype;
	}


	
			
	}
	


