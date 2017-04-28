package com.telusko.tusk.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.telusko.tusk.entity.Question;

@Repository
public class QuestionDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void saveQuestion(Question q) 
	{
		Session session = sessionFactory.getCurrentSession();
		session.save(q);
	}

	@Transactional
	public List<Question> getQuestions() {
		
		Session session = sessionFactory.getCurrentSession();
		// not sql... it is Hql
		Query<Question> q = session.createQuery("from Question", Question.class);
		List<Question> questions = q.list();
		
			
		return questions;
	}

	@Transactional
	public List<Question> getTestQuestions() {
		
		Session session = sessionFactory.getCurrentSession();
		NativeQuery<Question> query = session.createNativeQuery("select * from question order by random() limit 5",Question.class);
		List<Question> questions = query.list();
		return questions;
		
		
	}

	
	
	
}	
	


