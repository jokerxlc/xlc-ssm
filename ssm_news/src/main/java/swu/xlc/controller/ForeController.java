package swu.xlc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import swu.xlc.domain.Comment;
import swu.xlc.domain.New;
import swu.xlc.domain.User;
import swu.xlc.service.NewService;

import javax.servlet.http.HttpSession;
import java.util.List;
@Controller
public class ForeController {

    @Autowired
    private NewService newService;

    /*
        查询各分类下的新闻传送至前端
    */
    @RequestMapping("forelist_new")
    private String forelist(Model model){
        List<New> tynew=newService.selectFiveByCid(1);
        model.addAttribute("tynew",tynew);
        List<New> zznew=newService.selectFiveByCid(2);
        model.addAttribute("zznew",zznew);
        List<New> jjnew=newService.selectFiveByCid(3);
        model.addAttribute("jjnew",jjnew);
        List<New> zrnew=newService.selectFiveByCid(4);
        model.addAttribute("zrnew",zrnew);
        List<New> yxnew=newService.selectFiveByCid(5);
        model.addAttribute("yxnew",yxnew);
        return "forelist";
    }

    @RequestMapping("forenew_view")
    private String foreview(Integer id , Model model){
        New anew=newService.viewNew(id);
        List<Comment> comments=anew.getComments();
        model.addAttribute("anew",anew);
        model.addAttribute("comments",comments);
        return "foreview_new";
    }

    @RequestMapping("login")
    private ModelAndView login(String username,String password , ModelAndView modelAndView , HttpSession session){

        if(username!=null && username.equals("admin")
        && password!=null && password.equals("159357")) {
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            session.setAttribute("user", user);
            modelAndView.setViewName("redirect:category_list");
        }
        else {
            modelAndView.addObject("message","登录名或密码错误，请重新输入。");
            modelAndView.setViewName("loginForm");
        }
        return modelAndView;
    }

    @RequestMapping("loginForm")
    private String admin(){
        return "loginForm";
    }

}
