package swu.xlc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import swu.xlc.domain.Category;
import swu.xlc.mapper.CategoryMapper;
import swu.xlc.service.CategoryService;
import swu.xlc.util.Page;

import java.util.List;
@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public int total() { return categoryMapper.total(); }

    @Override
    public List<Category> list(Page page) {
        return categoryMapper.getAll(page);
    }

    @Override
    public List<Category> listAll() {
        return categoryMapper.list();
    }

    @Override
    public void delete(Integer id) {
        categoryMapper.deleteById(id);
    }

    @Override
    public void add(Category category) {
        categoryMapper.addCategory(category);
    }

    @Override
    public Category selectById(Integer id) {
        return categoryMapper.selectById(id);
    }
}
