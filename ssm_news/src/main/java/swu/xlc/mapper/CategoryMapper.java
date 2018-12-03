package swu.xlc.mapper;

import org.apache.ibatis.annotations.Select;
import swu.xlc.domain.Category;
import swu.xlc.util.Page;

import java.util.List;

public interface CategoryMapper {

    int total();

    List<Category> getAll(Page page);

    List<Category> list();

    void deleteById(Integer id);

    void addCategory(Category category);

    Category selectById(Integer id);

}
