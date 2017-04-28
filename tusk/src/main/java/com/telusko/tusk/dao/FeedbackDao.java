package com.telusko.tusk.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.telusko.tusk.entity.Feedback;

@Component
public class FeedbackDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Transactional
	public void addFeedback(Feedback fb)
	{
		System.out.println("in addFeedback " + fb);
		
		Session session = sessionFactory.getCurrentSession();
		session.save(fb);
	}
	
	
	@Transactional
	public List<Feedback> getFeedbacks()
	{
		
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Feedback");		// HQL
		List<Feedback> l = (List<Feedback>)q.list();
		
		System.out.println(l);
		return l;
	}


	
}
