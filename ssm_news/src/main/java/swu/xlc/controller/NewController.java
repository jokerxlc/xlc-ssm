package swu.xlc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import swu.xlc.domain.Category;
import swu.xlc.domain.Comment;
import swu.xlc.domain.New;
import swu.xlc.service.CategoryService;
import swu.xlc.service.NewService;
import swu.xlc.util.Page;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Controller
public class NewController {

    @Autowired
    private NewService newService;

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("new_list")
    private String list(Model model , Page page){
        List<New> news=newService.getAll(page);
        int toatal=newService.total();
        page.setTotal(toatal);
        model.addAttribute("page",page);
        model.addAttribute("news",news);
        return "list_new";
    }

    @RequestMapping("new_view")
    private String view(Integer id , Model model){
        New anew=newService.viewNew(id);
        Category category=anew.getCategory();
        List<Comment> comments=anew.getComments();
        model.addAttribute("anew",anew);
        model.addAttribute("category",category);
        model.addAttribute("comments",comments);
        return "view_new";
    }

    @RequestMapping("new_add")
    private String view(Model model){
        List<Category> categorys=categoryService.listAll();
        model.addAttribute("categorys",categorys);
        return "add_new";
    }

    @RequestMapping("add_anew")
    private ModelAndView add(New anew , ModelAndView modelAndView){
        anew.getId();
        anew.setTime(new Timestamp(new Date().getTime()));
        newService.addNew(anew);
        modelAndView.setViewName("redirect:/new_list");
        return modelAndView;
    }

    @RequestMapping("delete_anew")
    private ModelAndView delete(Integer id , ModelAndView modelAndView){
        newService.deleteNew(id);
        modelAndView.setViewName("redirect:/new_list");
        return modelAndView;
    }

    @RequestMapping("new_update")
    private String update(Integer id , Model model){
        List<Category> categorys=categoryService.listAll();
        New anew=newService.findById(id);
        model.addAttribute("categorys",categorys);
        model.addAttribute("anew",anew);
        return "update_new";
    }

    @RequestMapping("update_anew")
    private ModelAndView updateNew(New anew , ModelAndView modelAndView){
        newService.updateNew(anew);
        modelAndView.setViewName("redirect:/new_list");
        return modelAndView;
    }


}
