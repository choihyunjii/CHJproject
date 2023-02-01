package dao;


import dto.Writing;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;



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
                String sql = "insert into writing (title,contents,upload) values(?,?,?)";
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
    }



