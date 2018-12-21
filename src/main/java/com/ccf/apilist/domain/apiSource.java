package com.ccf.apilist.domain;



public class apiSource {
    public apiSource(String title, String desc, String url) {
        this.title = title;
        this.desc = desc;
        this.url = url;
    }

    private String title;
    private String desc;
    private String url;

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public void setUrl(String url) {
        this.url = url;
    }


    public String getTitle() {
        return title;
    }

    public String getDesc() {
        return desc;
    }

    public String getUrl() {
        return url;
    }




}
