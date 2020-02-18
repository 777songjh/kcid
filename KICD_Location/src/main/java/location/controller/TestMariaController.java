package location.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import location.service.TestMariaService;



@Controller
public class TestMariaController {

	@Resource(name = "TestMariaService")
	private TestMariaService testMariaService;

	private static final Logger logger = LoggerFactory.getLogger(TestMariaController.class);

	@RequestMapping("/testDB.do")
	public @ResponseBody String testDB() throws Exception {

		logger.info("제발 좀 되라... ");
		
		return testMariaService.testDB();
	} 
	 
	@ResponseBody
	@RequestMapping("/testAjaxDB.do")
	public String testAjaxDB() throws Exception {

		logger.info("제발 좀 되라.xxxxxxxxx.. ");
		
		return testMariaService.testDB();
	} 

	@ResponseBody
	@RequestMapping("/testAjax1.do")
	public Map<String, Object> testAjax1() throws Exception {

		logger.info("제xxxxxxxx발 좀 되라.xxxxxxxxx.. ");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", "victolee");
		map.put("age", 26);
		
		return map;

	}

	@ResponseBody
	@RequestMapping("/testAjax122.do")
	public String testAjax122() throws Exception {

		logger.info("제xxxxxxxx발 좀 되라.xxxxxxxxx.. ");
		
		return "xwqweqwewewqe";

	}
}
