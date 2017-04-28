package com.telusko.tusk;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.telusko.tusk.dao.QuestionDao;
import com.telusko.tusk.entity.Question;

@Controller
public class QuestionController 
{
	@Autowired
	QuestionDao qDao;
	
		@RequestMapping("saveQuestion.htm")
		public ModelAndView saveQuestion(@ModelAttribute Question q)
		{
			
			ModelAndView mv = new ModelAndView("printQuestions.jsp");
			qDao.saveQuestion(q);
			return mv;
		}
		
		@RequestMapping("getQuestions.htm")
		@ResponseBody
		public String getQuestions()
		{
			List<Question> questions = qDao.getQuestions();
			
			System.out.println(questions);
			
			return questions.toString();
		}
		
		@RequestMapping("test.htm")
		@ResponseBody
		public String test()
		{
			List<Question> questions = qDao.getTestQuestions();
			
			System.out.println(questions);
			
			return questions.toString();
		}

		
}

	


