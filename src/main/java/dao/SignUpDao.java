package dao;

import dto.SignUp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SignUpDao {
    private static String dburl ="jdbc:mysql://localhost:3306/chj";
    private static String dbuser ="root";
    private static String dbpassword="Guswl0105@@"; //2번째

    public int addUser(SignUp signup){  //private로 변수 지정한 거 호출 느낌스?
        int insertCount=0;
        Connection conn=null;
        PreparedStatement ps=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection(dburl,dbuser,dbpassword);
            String sql = "insert into signup (id,name,password,age,gender,phonenumber,etc) values(?,?,?,?,?,?,?)";
            ps=conn.prepareStatement(sql);
            ps.setString(1,signup.getId());
            ps.setString(2,signup.getName());
            ps.setString(3,signup.getPassword());
            ps.setString(4,signup.getAge());
            ps.setString(5,signup.getGender());
            ps.setString(6,signup.getPhonenumber());
            ps.setString(7,signup.getEtc());
            insertCount=ps.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
        }
        return insertCount;
    }
    public int login(String userId,String password){
        int insertCount=0;

        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn=DriverManager.getConnection(dburl,dbuser,dbpassword);//데이터베이스 접근 부분
            String SQL = "SELECT password FROM signUp WHERE id=?";
            ps=conn.prepareStatement(SQL);//쿼리문 수행되는 부분
            ps.setString(1,userId);
            rs=ps.executeQuery();

            if (rs.next()){
                if (rs.getString(1).equals(password)){
                    return 1;//로그인 성공
                }
                else {
                    return insertCount;//비밀번호 오류
                }
            }
            return -1;
        }catch (Exception e){

        }
        return -2;
    }
}
