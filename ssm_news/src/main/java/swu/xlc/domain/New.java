package swu.xlc.domain;

import javafx.scene.text.Text;

import java.util.Date;
import java.util.List;

public class New {
    private Integer id;

    private String title;

    private String content;

    private Date time;

    private Category category;

    private List<Comment> comments;

    public List<Comment> getComments() { return comments; }

    public void setComments(List<Comment> comments) { this.comments = comments; }

    public Integer getId() { return id; }

    public void setId(Integer id) { this.id = id; }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() { return content; }

    public void setContent(String content) { this.content = content; }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public New() { }

    public New(Integer id, String title, String content, Date time, Category category, List<Comment> comments) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.time = time;
        this.category = category;
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "New{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", time=" + time +
                ", category=" + category +
                ", comments=" + comments +
                '}';
    }
}
