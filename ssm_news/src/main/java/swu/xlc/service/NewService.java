package swu.xlc.service;

import swu.xlc.domain.New;
import swu.xlc.util.Page;

import java.util.List;

public interface NewService {

    int total();

    List<New> getAll(Page page);

    New viewNew(Integer id);

    void addNew(New anew);

    void deleteNew(Integer id);

    New findById(Integer id);

    void updateNew(New anew);

    List<New> selectFiveByCid(Integer id);
}
