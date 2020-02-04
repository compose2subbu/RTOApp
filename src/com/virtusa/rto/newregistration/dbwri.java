package com.virtusa.rto.newregistration;


import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.Transaction;

import org.hibernate.cfg.Configuration;




public class dbwri extends ActionSupport{
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
	private String  insuranceno;
	private String  accountno;
	private String engineno;
	private String chasisno;
	private String doa; 
  
	public String execute() {

         Session session = null;



         try{

               // This step will read hibernate.cfg.xml and prepare hibernate for use
        	 System.out.println("Hai");

                     SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
                     System.out.println("Hai7676");
                     session =sessionFactory.openSession() ;


	                        //Create new instance of Contact and set values in it by reading them from form object

	                        System.out.println("Inserting Record");
	                   
	                        Contact contact = new Contact();
	                        
	                        contact.setFirstname(getFirstname());
	                        
	                        contact.setLastname(getLastname());

	                        contact.setGender(getGender());

	                        contact.setSubtype(getSubtype());
	                        
	                        contact.setAddress(getAddress());
	                        System.out.println(getFirstname());
	                        System.out.println(getLastname());
	                        System.out.println();
	                        System.out.println(getPincode());
	                        System.out.println(getMobile());
	                        System.out.println(getInsuranceno());
	                        System.out.println(getAccountno());
	                        System.out.println(getEngineno());
	                        System.out.println(getChasisno());
	                        System.out.println(getFirstname());
	                        System.out.println(getLastname());
	                        System.out.println(getGender());
	                        System.out.println(getDoa());
	                        		
	                        long lp=Long.parseLong(getPincode());
	                        
	                        contact.setPincode(lp);
	                        
	                        long lm=Long.parseLong(getMobile());
	                        
	                        contact.setMobile(lm);
	                        
	                        contact.setBankname(getBankname());
	                        
	                        long li=Long.parseLong(getInsuranceno());
	                        
	                        contact.setInsuranceno(li);
	                        
	                        long la=Long.parseLong(getAccountno());
	                        
	                        contact.setAccountno(la);
	                        
	                        long le=Long.parseLong(getEngineno());
	                        
	                        contact.setEngineno(le);
	                        
	                        long lc=Long.parseLong(getChasisno());
	                        contact.setChasisno(lc);
	                        System.out.println(getDoa());
	                        contact.setDoa(getDoa());

	                        Transaction tx = session.beginTransaction();

	                        session.save(contact);

	                        tx.commit();

	                        System.out.println("Done");
	                        
	                        session.close();
	        	           
	                        return "success";
	                   
	                        
	            }

         		catch(Exception e)
	            {
         			
	            	System.out.println(e);
	                  e.printStackTrace();
	                  return "error";

	            }finally{
	            	session.close();
	            }
	            
	}
	      

	public String getFirstname() {
		return firstname;
		
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
		System.out.println(firstname);
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
		System.out.println(pincode);
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
	
