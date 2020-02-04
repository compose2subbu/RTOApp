/*import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.opensymphony.xwork2.ActionSupport;


public class admin extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	private String username1;
	private String password1;	
	
	
	public  String execute() throws Exception
	{   
	Session session = null;
	try {
		 System.out.println(session);	       
		                // This step will read hibernate.cfg.xml and prepare hibernate for

		                // use
		 System.out.println(getUsername1());
		 System.out.println(getPassword1());
		 
		    	        System.out.println("Started");
		    			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		    			 System.out.println("Started1");		 
		    			 
		    			session = sessionFactory.openSession();
		    			 System.out.println("Started2");	
		    			 @SuppressWarnings("unused")
						admintable o= new admintable();
		    			
		    		System.out.println("Started3"); 		
		    		
		    			 //if((u.equals(o.getUsername()))&&(p.equals(o.getPassword())))
		    			// { 
		    				 System.out.println("inside check");	
		    				 Transaction tx=session.beginTransaction();
		    				tx.commit();
		    				session.close(); 
		    				 return "SUCCESS";
		    				 
		    			// }
		    			 
		    			// else{		   session.close();  				
		    			//	 return "ERROR";
		    			// } 
		    			 
		    			
	}
	
	catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
		return "ERROR";
		} 
	}
		
	
	



	public String getUsername1() {
		return username1;
	}



	public void setUsername1(String username1) {
		this.username1 = username1;
	}



	public String getPassword1() {
		return password1;
	}



	public void setPassword1(String password1) {
		this.password1 = password1;
	}

}*/
package com.virtusa.rto.login;
import commonlogger.*;
import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;
public class Adminlogin extends ActionSupport 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String admin;
	private String equality;
	 @SuppressWarnings("unused")
	private static final CommonLogger logger = CommonLogger.getLogger(admintable.class);
	 
	 
	 @SuppressWarnings("unchecked")
	public String execute() throws Exception
	   {
		Session session = null;
		System.out.println("inside session");
try{
			
			System.out.println(getUsername());
			System.out.println(getPassword());
			System.out.println(getAdmin());
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			System.out.println("Session Factory created");
			session =sessionFactory.openSession();
			System.out.println("Session created");
			String SQL_QUERY="from admintable";

			Query query1=session.createQuery(SQL_QUERY);
			System.out.println(query1.getQueryString());
			System.out.println("Before loop");
			
			
			
			
		for(Iterator it=query1.iterate();it.hasNext();)
 {
				System.out.println("Entering Loop");
				admintable o=(admintable)it.next();
				System.out.println("Entering if");
			//if(o != null)
	 //  {
				//System.out.println("hi");
					System.out.println(o.getUsername());
					System.out.println(o.getPassword());
					System.out.println(o.getAdmin());
		     
				if(o.getUsername().equals(getUsername()))
				{
				      if(o.getPassword().equals(getPassword()))
				    {
				      System.out.println("sss");
				      System.out.println(o.getUsername());
				      System.out.println(o.getPassword());
				      
				      setEquality("Success");
				      session.close();
				      return "success";
				
				    }
				      setEquality("Invalid Password");
				System.out.println("Password incorrect ");
				
				session.close();
				return "error";
			    }
				
		    }
		            
					
	  // }
		setEquality("invalid Username");
			System.out.println("Username is not valid");
			//setEquality("invalid Username");
			session.close();
			return "error";
  
}
				
				catch(Exception e){
			    e.printStackTrace();
			    session.close();
			    return "error";
              }

    }
	 
	 
	 


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getAdmin() {
		return admin;
	}


	public void setAdmin(String admin) {
		this.admin = admin;
	}


	public String getEquality() {
		return equality;
	}


	public void setEquality(String equality) {
		this.equality = equality;
	}
	//Transaction tx = session.beginTransaction();
	/*
			
			
			// This step will read hibernate.cfg.xml and prepare hibernate for use
			 	
			 	System.out.println("session factory");
			 	session =sessionFactory.openSession();
			 	System.out.println(" session open");
				//Create new instance of Contact and set values in it by reading them from form object
			 	System.out.println("Inserting Record");
				admintable contact = new admintable();			
				//contact.setage(6);
				
				//contact.setLastName("Lord");
				//contact.setEmail("dev@virtusa.com");
				//session.get(contact.username,contact.password);System.out.println("Done");
				//session.delete(contact);
				//session.update(contact);
				//contact.setname("ganesh");
				//session.save(contact);
				
				tx.commit();
				System.out.println("Done");
				return SUCCESS;
	 */
}

