package swu.xlc.service;

import swu.xlc.domain.Comment;
import swu.xlc.util.Page;

import java.util.List;

public interface CommentService {
    void addComment(Comment comment);

    int total();

    List<Comment> getAll(Page page);

    void deleteComment(Integer id);
}
