package swu.xlc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import swu.xlc.domain.Comment;
import swu.xlc.mapper.CategoryMapper;
import swu.xlc.mapper.CommentMapper;
import swu.xlc.service.CommentService;
import swu.xlc.util.Page;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public void addComment(Comment comment) {
        commentMapper.addComment(comment);
    }

    @Override
    public int total() {
        return commentMapper.total();
    }

    @Override
    public List<Comment> getAll(Page page) {
        return commentMapper.getAll(page);
    }

    @Override
    public void deleteComment(Integer id) {
        commentMapper.deleteCommentById(id);
    }
}
