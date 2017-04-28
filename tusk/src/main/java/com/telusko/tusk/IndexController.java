package com.telusko.tusk;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.telusko.tusk.dao.FeedbackDao;
import com.telusko.tusk.entity.Feedback;

@Controller
public class IndexController 
{
	@Autowired
	FeedbackDao fdao;

	Feedback feedback;
	
	@RequestMapping("/")
	public String home()
	{
		return "index.jsp";
	}
	
	@RequestMapping("/feedback.htm")
	public String feedback()
	{
		return "feedback.jsp";
	}
	
	@RequestMapping("/addFeedback")
	//public String addFeedback(@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("reg") String reg,@RequestParam("code") String code,@RequestParam("msg") String msg,@RequestParam("rating") int rating)
	
	public String addFeedback(@ModelAttribute("feedback") Feedback feedback)
	{
		//feedback = new Feedback(name,email,reg,code,rating);
		fdao.addFeedback(feedback);
		return "welcome.jsp";
	}
	
	@RequestMapping("/getFeedbacks.htm")
	public ModelAndView getFeedbacks()
	{
		ModelAndView mv = new ModelAndView("feedbacks.jsp");
		
		mv.addObject("feedbacks",fdao.getFeedbacks());
		
		return mv;
	}

	@RequestMapping("/question.htm")
	public ModelAndView addQuestion()
	{
		ModelAndView mv = new ModelAndView("question.jsp");
		
		return mv;
	}
	
	
}
