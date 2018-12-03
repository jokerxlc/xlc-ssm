package swu.xlc.mapper;

import swu.xlc.domain.New;
import swu.xlc.util.Page;

import java.util.List;

public interface NewMapper {

    int total();

    List<New> getAll(Page page);

    New selectById(Integer id);

    New viewNew(Integer id);

    void addNew(New anew);

    void deleteNewById(Integer id);

    void updateNew(New anew);

    List<New> selectFiveByCid(Integer id);
}
