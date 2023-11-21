package com.example.model;

public class Story {

    private String Id;
    private String title;
    private String author;
    private String url;
    private String hinhanh;

    public String getImage() {return hinhanh;}

    public void setImage(String hinhanh){this.hinhanh = hinhanh;}

    public String getId() {return Id;}

    public void setId(String Id){this.Id = Id;}

    public String getTitle() {return title;}

    public void setTitle(String title) {this.title = title;}

    public String getAuthor() {return author;}

    public void setAuthor(String author) {this.author = author;}

    public String getUrl(){return url;}

    public void setUrl(String url){this.url = url;}

}
