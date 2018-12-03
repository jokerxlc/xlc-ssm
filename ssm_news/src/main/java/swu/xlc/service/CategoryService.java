package swu.xlc.service;

import swu.xlc.domain.Category;
import swu.xlc.util.Page;

import java.util.List;

public interface CategoryService {
    /*
    获取总数目，进行分页
     */
    int total();
    /*
    分页查询所有分类
     */
    List<Category> list(Page page);
    /*
    查询所有分类
     */
    List<Category> listAll();
    /*
    根据id删除分类
     */
    void delete(Integer id);
    /*
    创建新的分类
     */
    void add(Category category);
    /*
    根据ID查询分类下的新闻
     */
    Category selectById(Integer id);


}
