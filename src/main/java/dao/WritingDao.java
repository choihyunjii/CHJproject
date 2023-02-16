package dao;


import dto.Writing;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class WritingDao {
        private static String dburl ="jdbc:mysql://localhost:3306/chj";
        private static String dbuser ="root";
        private static String dbpassword="Guswl0105@@"; //2번째

        public int addUser(Writing writing){  //private로 변수 지정한 거 호출 느낌스?
            int insertCount=0;
            Connection conn=null;
            PreparedStatement ps=null;
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn= DriverManager.getConnection(dburl,dbuser,dbpassword);
                String sql = "insert into writing values (?,?,?,?)";
                ps=conn.prepareStatement(sql);
                ps.setInt(1,writing.getId());
                ps.setString(2, writing.getTitle());
                ps.setString(3,writing.getContents());
                ps.setString(4,writing.getUpload());
                insertCount=ps.executeUpdate();


            }catch (Exception e){
                e.printStackTrace();
            }
            return insertCount;
        }

    public Writing getWriting(int id){
            String sql="SELECT * FROM writing where id=?";

            Connection conn=null;
            PreparedStatement ps=null;
            ResultSet rs=null;  //결과값 조회임


            try {
               Class.forName("com.mysql.cj.jdbc.Driver");
               conn = DriverManager.getConnection(dburl,dbuser,dbpassword);
               ps=conn.prepareStatement(sql);
                ps.setInt(1,id);
                rs=ps.executeQuery();
                if (rs.next()){
                    Writing writing=new Writing();
                    writing.setId(rs.getInt(1));
                    writing.setTitle(rs.getString(2));
                    writing.setContents(rs.getString(3));
                    writing.setUpload(rs.getString(4));
                    return writing;
                }
            }catch (Exception e){
                e.printStackTrace();
            }
            return null;
    }
    public List<Writing> getUsers(){
        List<Writing> list = new ArrayList<>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");

        }catch (ClassNotFoundException e){
            e.printStackTrace();

        }
        String sql="select * from writing";
        try(Connection conn=DriverManager.getConnection(dburl,dbuser,dbpassword);
            PreparedStatement ps=conn.prepareStatement(sql)){
            try(ResultSet rs = ps.executeQuery(sql)){
                while(rs.next()){
                    int id=rs.getInt(1);
                    String title = rs.getString(2);
                    String contents = rs.getString(3);
                    String upload = rs.getString(4);

                    Writing writing = new Writing(id,title, contents,upload);
                    list.add(writing);
                }

            }catch (Exception e) {
                e.printStackTrace();

            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return list;
    }
    public int upDate(Writing update){  //private로 변수 지정한 거 호출 느낌스?
        int insertCount=0;
        Connection conn=null;
        PreparedStatement ps=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection(dburl,dbuser,dbpassword);
            String sql = "UPDATE writing SET title =? ,bbsContents =? Upload =? WHERE id=?";
            ps=conn.prepareStatement(sql);
            ps.setInt(1,update.getId());
            ps.setString(2, update.getTitle());
            ps.setString(3,update.getContents());
            ps.setString(4,update.getUpload());
            insertCount=ps.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
        }
        return insertCount;
    }
}



