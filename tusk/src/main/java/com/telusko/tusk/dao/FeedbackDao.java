package com.telusko.tusk.dao;

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
	public void addFeedback(Feedback theFeedback) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(theFeedback);
	}
}
