package com.virtusa.rto.login;
import org.hibernate.Session;
import java.text.*;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import commonlogger.*;
public class Newuserlogin extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String cpassword;
	private String firstname;	
	private String lastname;
	private String gender;
	private String address1;
	private String address2;
	private String city;
	private String pincode;
	private String email;
	private String idmark;
	private String blood_group;
	private String occupation;
	private String mobile;
	private String stdcode;
	private String phonenumber;
	private String accountno;
	private String dateofbirth;
	private String bankname;
	private String name;
	private String age;
	private static final CommonLogger logger = CommonLogger.getLogger(Newuserlogintable.class);
	
	/*public Date DateFormater (String x)	
	{
	try 
	{   System.out.println("inside date function");
		
		String str_date=x;
	   DateFormat formatter ; 
	   Date date ; 
	   formatter = new SimpleDateFormat("dd-MON-yyyy");
	   date = (Date)formatter.parse(str_date);  
	   System.out.println(date);
	   return date;
	  
	 } 
	catch (ParseException e)

	 {System.out.println("Exception :"+e); 
	 
	 return new Date();
	 }    
	  
	}*/

	


public final String execute() throws Exception
{   
Session session = null;
System.out.println("hi");

//System.out.println(session);
try {             
	    	         System.out.println("Started");
	    			 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	    			 System.out.println("Started1");
	    			 session = sessionFactory.openSession();
	    			 System.out.println("Started2");
	    			 Newuserlogintable o = new Newuserlogintable();
	    			 System.out.println("Started3"); 	    			
	    		    o.setUsername(getUsername());
	    			System.out.println(getUsername());
	    			
	    			o.setFirstname(getFirstname());
	    			System.out.println(getFirstname());
	    			o.setLastname(getLastname());
	    			o.setAddress1(getAddress1());
	    			System.out.println(getAddress1());
	    			o.setAddress2(getAddress2());
	    			System.out.println(getAddress2());
	    			o.setBankname(getBankname());
	    			o.setBlood_group(getBlood_group());
	    			o.setCity(getCity());
	    			Newuserlogin obj=new Newuserlogin();
	    			//Date r=obj.DateFormater(getDateofbirth());	    			
	    			//o.setDateofbirth(getDateofbirth());
	    			o.setDateofbirth("sgdh");
	    			o.setEmail(getEmail());	    			
	    			o.setGender(getGender());
	    			o.setIdmark(getIdmark());	    			
	    			long b=Long.parseLong(getPincode());
	    			o.setPincode(b);	    			
	    			long c=Long.parseLong(getAccountno());
	    			o.setAccountno(c);	    			
	    			long d=Long.parseLong(getMobile());
	    			o.setMobile(d);	    			
	    			long e=Long.parseLong(getPhonenumber());
	    			o.setPhonenumber(e);	    			
	    			long f=Long.parseLong(getStdcode());
	    			o.setStdcode(f);
	    			int g=Integer.parseInt(getAge());
	    			o.setAge(g);
	    			o.setOccupation(getOccupation());
	    			
	    			
	    			//long acc=Long.parseLong(getAccountno());
	    			   			
	    			long h=Long.parseLong(getMobile());	
	    			o.setMobile(h);	 
	    			long i=Long.parseLong(getPhonenumber());
	    			o.setPhonenumber(i);	
	    			long j=Long.parseLong(getStdcode());
	    			o.setStdcode(j);
	    			o.setUsername(username);
	    			 System.out.println("Started4");
	    			 Transaction tx = session.beginTransaction();
	    			 System.out.println("Started5");
	    			 session.save(o);
	    			 System.out.println("Started6");	    			
	    			 tx.commit(); 
	    			 System.out.println("Started7");
	    			 session.close();	    			
	    			//System.out.print(getGender());
	    			System.out.println("done");
	    			return SUCCESS;
	    			
	    			//System.out.println("Exit loop");
	    			} catch (Exception e) {
	    				System.out.println(e);
	    				e.printStackTrace();
	    				return "error";
	    				} 
	    				


	}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
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
public String getAddress1() {
	return address1;
}
public void setAddress1(String address1) {
	this.address1 = address1;
}
public String getAddress2() {
	return address2;
}
public void setAddress2(String address2) {
	this.address2 = address2;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getPincode() {
	return pincode;
}
public void setPincode(String pincode) {
	this.pincode = pincode;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getIdmark() {
	return idmark;
}
public void setIdmark(String idmark) {
	this.idmark = idmark;
}
public String getBlood_group() {
	return blood_group;
}
public void setBlood_group(String blood_group) {
	this.blood_group = blood_group;
}
public String getOccupation() {
	return occupation;
}
public void setOccupation(String occupation) {
	this.occupation = occupation;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getStdcode() {
	return stdcode;
}
public void setStdcode(String stdcode) {
	this.stdcode = stdcode;
}
public String getPhonenumber() {
	return phonenumber;
}
public void setPhonenumber(String phonenumber) {
	this.phonenumber = phonenumber;
}
public String getAccountno() {
	return accountno;
}
public void setAccountno(String accountno) {
	this.accountno = accountno;
}
public String getDateofbirth() {
	return dateofbirth;
}
public void setDateofbirth(String dateofbirth) {
	this.dateofbirth = dateofbirth;
}
public String getBankname() {
	return bankname;
}
public void setBankname(String bankname) {
	this.bankname = bankname;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public static CommonLogger getLogger() {
	return logger;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getCpassword() {
	return cpassword;
}
public void setCpassword(String cpassword) {
	this.cpassword = cpassword;
}


}