package swu.xlc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import swu.xlc.domain.Comment;
import swu.xlc.service.CommentService;
import swu.xlc.util.Page;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Controller
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping("add_comment")
    private ModelAndView add(Comment comment , ModelAndView modelAndView , RedirectAttributes redirectAttributes){
        comment.getId();
        comment.setTime(new Timestamp(new Date().getTime()));
        commentService.addComment(comment);
        int aid=comment.getAnew().getId();
        redirectAttributes.addAttribute("id",aid);
        modelAndView.setViewName("redirect:/forenew_view");
        return modelAndView;
    }

    @RequestMapping("comment_list")
    private String list(Model model , Page page){
        List<Comment> comments=commentService.getAll(page);
        int total=commentService.total();
        page.setTotal(total);
        model.addAttribute("page",page);
        model.addAttribute("comments",comments);
        return "list_comment";
    }

    @RequestMapping("delete_comment")
    private ModelAndView delete(Integer id , ModelAndView modelAndView){
        commentService.deleteComment(id);
        modelAndView.setViewName("redirect:/comment_list");
        return modelAndView;
    }
}
