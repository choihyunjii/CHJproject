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
                String sql = "insert into writing values (?,?,?)";
                ps=conn.prepareStatement(sql);
                ps.setString(1, writing.getTitle());
                ps.setString(2,writing.getContents());
                ps.setString(3,writing.getUpload());
                insertCount=ps.executeUpdate();


            }catch (Exception e){
                e.printStackTrace();
            }
            return insertCount;
        }

    public Writing getUser(Integer id){
        Writing writing=null;
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection(dburl,dbuser,dbpassword); // database 실질적 접근 부분  연결
            String sql="SELECT * FROM writing ";   //statement 쿼리문
            ps=conn.prepareStatement(sql);   // 쿼리문 실행 //4           쿼리문 연결해서 실행
                               //쿼리문 연결됐으면 1 실행?
            rs=ps.executeQuery(); // rs 쿼리실행
            if(rs.next()){ // rs 값이 있다면
                String title =rs.getString(1);
                String contents=rs.getString(2);
                String upload=rs.getString(3);


                writing=new Writing(title,contents,upload);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return writing;
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
                    String title = rs.getString(1);
                    String contents = rs.getString(2);
                    String upload = rs.getString(3);

                    Writing writing = new Writing(title, contents,upload);
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

    }



