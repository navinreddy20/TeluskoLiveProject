package com.telusko.tusk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.telusko.tusk.dao.QuestionDao;
import com.telusko.tusk.entity.Question;

@Controller
@EnableWebMvc
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
		
		@RequestMapping("getQuestions")
		@ResponseBody
		public List<Question> getQuestions()
		{
			List<Question> questions = qDao.getTestQuestions();
			
			System.out.println(questions);
			
			return questions;
		}
		
		@RequestMapping("/test.htm")
		public ModelAndView test()
		{
			ModelAndView mv = new ModelAndView("test.jsp");
			
			return mv;
		}
		@RequestMapping("/verify.htm")
		public ModelAndView verify(@RequestParam("qid1") int qid1)
		{
			ModelAndView mv = new ModelAndView("result.jsp");
			System.out.println(qid1);
			return mv;
		}
}

	


