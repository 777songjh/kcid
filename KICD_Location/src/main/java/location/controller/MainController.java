package location.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import location.service.MainService;
import location.vo.TestMember_VO;


@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Resource(name = "MainService") // 임마이거 중요하네.. 없으니 인터페이스 메소드가 static 으로 인식하네
	private MainService MainService;


	@RequestMapping("/main.do")
	public String mainPage() {
		logger.info("xxxxxxxxxx는 ");
		
		return "Main";
	}

	@ResponseBody
	@RequestMapping("/login.do")
	public String login(TestMember_VO m, HttpSession session) throws Exception {

		logger.info("로그인 시작.. " + m.getId());
		
		
		int iRtn = MainService.Login(m, session);
		logger.info("로그인 시작.2222. ");
		
		if (iRtn == 1)
		{
			session.setAttribute("id", m.getId());
			logger.info("로그인 시작..3333323232313221312312321333333 ");
		}
		else			
		{
			logger.info("로그인 시작..3333333333 ");
			//session.r//
		}
		
		return Integer.toString(iRtn);
	}
	
}
