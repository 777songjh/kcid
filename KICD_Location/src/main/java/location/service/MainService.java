package location.service;

import javax.servlet.http.HttpSession;

import location.vo.TestMember_VO;

public interface MainService {

	int Login(TestMember_VO m, HttpSession Hsession) throws Exception;
}
