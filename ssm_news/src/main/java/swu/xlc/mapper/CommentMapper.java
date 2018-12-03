package swu.xlc.mapper;

import swu.xlc.domain.Comment;
import swu.xlc.util.Page;

import java.util.List;

public interface CommentMapper {
    void addComment(Comment comment);

    int total();

    List<Comment> getAll(Page page);

    void deleteCommentById(Integer id);
}
