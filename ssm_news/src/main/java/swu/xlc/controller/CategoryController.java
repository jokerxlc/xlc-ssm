package swu.xlc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import swu.xlc.domain.Category;
import swu.xlc.domain.New;
import swu.xlc.service.CategoryService;
import swu.xlc.util.Page;

import java.util.List;

@Controller
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    /*
    查询所有分类请求
     */
    @RequestMapping("category_list")
    public String list(Model model , Page page){
        List<Category> cs= categoryService.list(page);
        int total = categoryService.total();
        page.setTotal(total);
        model.addAttribute("page",page);
        model.addAttribute("cs", cs);
        return "list_category";
    }

    /*
    根据ID删除分类请求
     */
    @RequestMapping("delete_category")
    public ModelAndView delete(Integer id , ModelAndView modelAndView){
        categoryService.delete(id);
        modelAndView.setViewName("redirect:/category_list");
        return modelAndView;
    }
    /*
    添加分类
     */
    @RequestMapping("add_category")
    public ModelAndView add(Category category,ModelAndView modelAndView){
        category.getId();
        categoryService.add(category);
        //System.out.println(category.getId());
        modelAndView.setViewName("redirect:/category_list");
        return modelAndView;
    }
    /*
    查看分类下的新闻
     */
    @RequestMapping("categorynew_list")
    public String listnew(Integer id , Model model){
        Category category=categoryService.selectById(id);
        List<New> news=category.getNews();
        model.addAttribute("category",category);
        model.addAttribute("news",news);
        return "list_categorynew";
    }
}
