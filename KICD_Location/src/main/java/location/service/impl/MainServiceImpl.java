package location.service.impl;

import java.util.List;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import location.service.MainService;
import location.vo.TestMember_VO;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service("MainService")
public class MainServiceImpl extends EgovAbstractServiceImpl implements MainService {

	@Override
	public int Login(TestMember_VO m, HttpSession Hsession) throws Exception {
		//LOGGER.debug("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
		//List<TestMariaVO> data = testMapper.testDB();
		
		return 1;
	}
}
