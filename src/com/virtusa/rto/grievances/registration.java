package com.virtusa.rto.grievances;
import commonlogger.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.opensymphony.xwork2.ActionSupport;

 
public class registration extends ActionSupport{
	
	
	private static final CommonLogger logger = CommonLogger.getLogger(registration.class);
	 
	private static final long serialVersionUID = 1L;
	private String user_name;
	private String service_type;
	private String sub_servicetype;
	private String grievances;
	
	
	
	public String execute() throws Exception 
    {   grieve g=new grieve();
		System.out.println("enter");
		Session session=null;
		try{
		System.out.println("ok1");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		System.out.println("ok2");
		session = sessionFactory.openSession();
		//String SQL_QUERY ="from logs"; 
		//Query query = session.createQuery(SQL_QUERY);		     
		System.out.println("ok3");
		
		g.setUser_name(getUser_name());
		g.setSub_service_type(getSub_service_type());
		g.setService_type(getService_type());
		g.setGrievances(getGrievances());
		System.out.println("ok4");       
        Transaction t=session.beginTransaction();
        System.out.println("ok5");
        
        session.save(g);
        System.out.println("ok6");
		t.commit();
		System.out.println("ok7");
		
		return SUCCESS;
		}
		
		catch(Exception e){
			e.printStackTrace();
			return "false";
		}
			}


	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String username) {
		this.user_name = username;
	}

	
	public String getService_type() {
		return service_type;
	}

	public void setService_type(String service_type) {
		this.service_type = service_type;
	}

	public String getSub_service_type() {
		return sub_servicetype;
	}

	public void setSub_service_type(String sub_service_type) {
		this.sub_servicetype = sub_service_type;
	}

	


	public String getGrievances() {
		return grievances;
	}


	public void setGrievances(String grievances) {
		this.grievances = grievances;
	}


	


	
				       
	
}
