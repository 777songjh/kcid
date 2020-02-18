package location.mapper;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import java.util.List;

import location.vo.TestMariaVO;

@Mapper("TestMariaMapper")
public interface TestMariaMapper {

 	List<TestMariaVO> testDB() throws Exception;
}
