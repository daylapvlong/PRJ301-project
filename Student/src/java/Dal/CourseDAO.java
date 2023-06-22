/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import DB.DBContext;
import Model.Quiz;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin's
 */
public class CourseDAO extends DBContext {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Quiz> getAllQuiz(String cid){
        List<Quiz> list = new ArrayList<>();
        String query = "select * from quiz \n" +
                        "where courseId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,cid);
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Quiz(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getInt(3),
                                    rs.getDate(4),
                                    rs.getTime(5)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public Quiz getQuizById(String quizId){
        String query = "select * from quiz\n" +
                        "where quizId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,quizId);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Quiz(rs.getInt(1),
                                rs.getString(2),
                                rs.getInt(3),
                                rs.getDate(4),
                                rs.getTime(5));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static void main(String[] args) {
        CourseDAO dao = new CourseDAO();
        
        String cid = "1";
        List<Quiz> list = dao.getAllQuiz(cid);
        for(Quiz o : list){
            System.out.println(o);
        }

//        String quizId ="1";
//        Quiz quiz = dao.getQuizById(quizId);
//        System.out.println(quiz);
    }
}
