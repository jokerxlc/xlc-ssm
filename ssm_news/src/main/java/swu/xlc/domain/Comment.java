package swu.xlc.domain;

import java.util.Date;

public class Comment {

    private Integer id;

    private Date time;

    private String text;

    private New anew;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public New getAnew() {
        return anew;
    }

    public void setAnew(New anew) {
        this.anew = anew;
    }

    public Comment() { }

    public Comment(Integer id, Date time, String text, New anew) {
        this.id = id;
        this.time = time;
        this.text = text;
        this.anew = anew;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", time=" + time +
                ", text='" + text + '\'' +
                ", anew=" + anew +
                '}';
    }
}
