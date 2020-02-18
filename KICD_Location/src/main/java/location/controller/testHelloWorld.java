package location.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class testHelloWorld {
	
	@RequestMapping("/hello.do")
	public @ResponseBody String HelloWorldTest()
	{
		return "Hello World!!!!!";
	}
	
	private static final Logger logger = LoggerFactory.getLogger(testHelloWorld.class);

	@RequestMapping("/testAjax.do")
	public String TestAjax()
	{
		logger.info("니 클라이언트 그거는 ");
		
		return "Test";
	}
	

	@RequestMapping("/home.do")
	public String home(Locale locale, Model model)
	{
		logger.info("니 클라이언트 locale is {} ", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		
		return "home";
	}
}
