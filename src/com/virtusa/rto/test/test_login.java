package com.virtusa.rto.test;

import java.util.ArrayList;
import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;



import antlr.collections.List;

import com.opensymphony.xwork2.ActionSupport;

 public class test_login extends ActionSupport
{/*
private String Question1;
private String Answer_b1;
private String Answer_a1;*/
	 
	public static int j=0,i=1,k=0;
	
	private String User_answer;
	
	private ArrayList answer;
	
private String Question;

	public String execute() throws Exception
	{
		
		Session session = null;
		
		if(i<=7)
		{
			if(answer!=null&&k<6)
			{
				try {
		        	System.out.println("Validating");
		        			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		        			session = sessionFactory.openSession();
		        			System.out.println("ArrayList");
		        		ArrayList ans=new ArrayList();
		        				test_table o=(test_table)session.load(test_table.class, k);
		        				System.out.println("objct");
		        				ArrayList temp=getAnswer();
		        				System.out.println(temp.get(0));
		        				System.out.println(o.getAnswercol_id());
		        				if(temp.get(0).equals(o.getAnswercol_id()))
		        					 j++;
		        				System.out.println(j+"   "+temp.get(0)+"  "+o.getAnswercol_id());
		        			    session.close();
		        			   
		        				System.out.println("Exit loop"+i);
		        			} catch (Exception e)
		        			{
		        				System.out.println(e);
		        				e.printStackTrace();
		        				} 
		        			finally {
		        					}
		        			k++;
		        				System.out.println("finally true");
				}
			
			if(i<6){
        try {
        	
        	System.out.println("staring with the table");
        			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        			session = sessionFactory.openSession();
        			System.out.println("Openin d arrayList");
        		ArrayList ans=new ArrayList();
        				test_table o=(test_table)session.load(test_table.class, i);
        				System.out.println("objct");
        				ans.add(o.getAnswer_a());
        				//System.out.println(getAnswer_a());
        				ans.add(o.getAnswer_b());
        				setAnswer(ans);
        				setQuestion(o.getQuestioncol());
        				System.out.println("Closing the session");
        			session.close();
        			
        			System.out.println("Exit loop"+i);
        			i++;
        			if(i==2)
        				k=1;
        			} catch (Exception e)
        			{
        				System.out.println(e);
        				e.printStackTrace();
        				} 
        			finally {
        					}
	
        				System.out.println(" 2rd finally true");
			}
		}
		if(k==6)
		{
			answer=null;
		}
        				return "true";

	}
		



	public String getQuestion() {
		return Question;
	}



	public void setQuestion(String question5) {
		Question = question5;
	}


	public ArrayList getAnswer() {
		return answer;
	}


	public void setAnswer(ArrayList answer) {
		
		this.answer = answer;
	}

	
	
}