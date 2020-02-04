package com.virtusa.rto.llr;
import commonlogger.*;



import java.util.Iterator;
import java.util.Date;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.Query;
import com.opensymphony.xwork2.ActionSupport;
public class applied extends ActionSupport
{
	private String addressproofnumber;
	private String ageproofnumber;
	private String DDnumber;
	private String Testdate;
	private String vehicletype;
	private String addressprooftype;
	private String ageprooftype;
	private static final long serialVersionUID = 1L;
	private static final CommonLogger logger = CommonLogger.getLogger(LlrPojo.class);
	
	
	
	
	public String execute() throws Exception
	{
		
		Session session = null;
		
		System.out.println("session3");
		
		try
		{	System.out.println("inside try");	
			
			
			LlrPojo ob = new LlrPojo();
		   System.out.println("session1");
		  
		   System.out.println("session2");		
			 	SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			 	System.out.println("session4");
			 	session =sessionFactory.openSession();
			 	System.out.println("inside session");
			 	//ob.setLlr_form_number(getLlr_form_number());
			 	ob.setAddressproofnumber(getAddressproofnumber());
			 	System.out.println(getAddressproofnumber());
			 	ob.setAgeproofnumber(getAgeproofnumber());
			 	System.out.println(getAgeproofnumber());
			 	ob.setDDnumber(getDDnumber());
			 	ob.setTestdate(getTestdate());
			 	ob.setVehicletype(getVehicletype());
			 	ob.setAddressprooftype(getAddressprooftype());
			 	ob.setAgeprooftype(getAgeprooftype());
			 		Transaction tx = session.beginTransaction();
			 		System.out.println("inside transcation");
			 	session.save(ob);
			 	System.out.println("inside save");
			 	tx.commit();
			 	System.out.println("session commit");
			 	System.out.println("Session closed");
			 	session.flush();
   			 session.close();	    
			 	return SUCCESS;
		}
		catch(Exception e)
		{
			System.out.println("session8");
			return "error";
		}
		
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