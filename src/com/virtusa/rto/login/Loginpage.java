package com.virtusa.rto.login;
import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;
public class Loginpage extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String equality;
	
	
	
	@SuppressWarnings("unchecked")
	public String execute()throws Exception{
		Session session = null;
		System.out.println("inside session");
try{
			
			System.out.println(getUsername());
			System.out.println(getPassword());			
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
	public String getEquality() {
		return equality;
	}
	public void setEquality(String equality) {
		this.equality = equality;
	}

	

}