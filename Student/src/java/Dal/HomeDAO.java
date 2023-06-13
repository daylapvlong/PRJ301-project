/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import DB.DBContext;
import Model.Category;
import Model.Course;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin's
 */
public class HomeDAO extends DBContext{
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Course> getAllCourse(){
        List<Course> list = new ArrayList<>();
        String query = "select * from Course";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Course(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
        public List<Course> getCourseByCategory(String cid){
        List<Course> list = new ArrayList<>();
        String query = "select * from Course\n" +
                        "where categoryId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,cid);
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Course(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Course> searchCourseByName(String txtSearch){
        List<Course> list = new ArrayList<>();
        String query = "select * from Course\n" +
                        "where courseName like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,"%" + txtSearch + "%");
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Course(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public Course getCourseById(String courseId){
        String query = "select * from Course\n" +
                        "where courseId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,courseId);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Course(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Category (rs.getInt(1),
                                    rs.getString(2)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static void main(String[] args) {
        HomeDAO dao = new HomeDAO();
//        List<Category> list = dao.getAllCategory();
//        for(Category o : list){
//            System.out.println(o);
//        }

        List<Course> list = dao.getAllCourse();
        for (Course o : list) {
            System.out.println(o);
        }
    }
}
