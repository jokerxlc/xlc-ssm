package swu.xlc.domain;

import java.util.List;

public class Category {
    private Integer id;

    private String name;

    private List<New> news;

    public List<New> getNews() { return news; }

    public void setNews(List<New> news) { this.news = news; }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category() { }

    public Category(Integer id, String name, List<New> news) {
        this.id = id;
        this.name = name;
        this.news = news;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", news=" + news +
                '}';
    }
}
