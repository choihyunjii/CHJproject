package dto;

public class Writing {
    private String title;
    private String contents;
    private String upload;

    public Writing(String title,String contents, String upload) {
        this.title = title;
        this.contents = contents;
        this.upload = upload ;
    }

    public String getTitle() {return title;}

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getUpload() {
        return upload;
    }

    public void setUpload(String upload) {
        this.upload = upload;
    }

    @Override
    public String toString() {
        return "Writing{" +
                "title=" + title +
                ", contents='" + contents + '\'' +
                ", upload='" + upload + '\'' +
            /*    ", ss='" + ss + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", etc='" + etc + '\'' +*/
                '}';
    }

}
