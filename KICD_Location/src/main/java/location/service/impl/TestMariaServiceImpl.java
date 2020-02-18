package location.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import location.mapper.TestMariaMapper;
import location.service.TestMariaService;
import location.vo.TestMariaVO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service("TestMariaService")
public class TestMariaServiceImpl extends EgovAbstractServiceImpl implements TestMariaService {

	private static final Logger LOGGER = LoggerFactory.getLogger(TestMariaServiceImpl.class);
	
	@Resource(name = "TestMariaMapper")
	private TestMariaMapper testMapper;
	
	@Override
	public String testDB() throws Exception {
		LOGGER.debug("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
		List<TestMariaVO> data = testMapper.testDB();
		return data.get(0).getTitle();
	}
}
