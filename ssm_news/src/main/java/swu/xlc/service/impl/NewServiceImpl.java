package swu.xlc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import swu.xlc.domain.New;
import swu.xlc.mapper.NewMapper;
import swu.xlc.service.NewService;
import swu.xlc.util.Page;

import java.util.List;
@Service
public class NewServiceImpl implements NewService {

    @Autowired
    private NewMapper newMapper;

    @Override
    public int total() { return newMapper.total(); }

    @Override
    public List<New> getAll(Page page) { return newMapper.getAll(page); }

    @Override
    public New viewNew(Integer id) {
        return newMapper.viewNew(id);
    }

    @Override
    public void addNew(New anew) { newMapper.addNew(anew); }

    @Override
    public void deleteNew(Integer id) {
        newMapper.deleteNewById(id);
    }

    @Override
    public New findById(Integer id) { return newMapper.selectById(id); }

    @Override
    public void updateNew(New anew) {
        newMapper.updateNew(anew);
    }

    @Override
    public List<New> selectFiveByCid(Integer id) {
        return newMapper.selectFiveByCid(id);
    }
}
