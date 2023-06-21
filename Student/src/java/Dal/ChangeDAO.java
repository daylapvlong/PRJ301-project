/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import DB.DBContext;
import Model.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin's
 */
public class ChangeDAO extends DBContext{
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Account> getAllAccount(){
        List<Account> list = new ArrayList<>();
        String query = "select * from Account";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Account(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getString(4),
                                    rs.getInt(5),
                                    rs.getInt(6)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public Account getAccountById(String id){
        String query = "select * from Account\n" +
                        "where Id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,id);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Account(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getString(4),
                                    rs.getInt(5),
                                    rs.getInt(6));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public boolean changePassword(String email, String newPassword) throws Exception {
        String query = "UPDATE Account SET password = ? WHERE email = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, newPassword);
            ps.setString(2, email);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return false;
    }
    
    public Account checkEmail(String mail) {
        try {
            String query = "Select * from Account where email = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, mail);
            rs = ps.executeQuery();
            
            while(rs.next()){
//                System.out.println(rs.getInt(1));
//                return null;
                return new Account(rs.getInt(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getString(4),
                                rs.getInt(5),
                                rs.getInt(6));
            }
        } catch(Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public void updateAccount(int id, String name, String email, String password){
        String query = "update Account\n"
                + "set [name] = ?,\n"
                + "email = ?,\n"
                + "[password] = ?\n"
                + "where Id = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setInt(4, id);
            int rowsAffected = ps.executeUpdate(); // Use executeUpdate instead of executeQuery
            System.out.println(rowsAffected + " row(s) updated successfully.");
        } catch(Exception e){
            System.out.println(e);
        }
    }
    
    public int getAccountIDByEmail(String email) {
        String query = "SELECT id FROM Account WHERE email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("id");
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return 0;
    }
    
    public static void main(String[] args) {
        ChangeDAO dao = new ChangeDAO();
//        String id = "1";
//        Account c = dao.getAccountById(id);
//        System.out.println(c);

//        List<Account> list = dao.getAllAccount();
//        System.out.println(list);

//        System.out.println(dao.checkEmail("johndoe@example.com"));
            
            
//            int accountId = 2; 
//            String newName = "Johny"; 
//            String newEmail = "johny.doe@example.com"; 
//            String newPassword = "newpassword"; 
//            dao.updateAccount(accountId, newName, newEmail, newPassword);

        String email = "nyexample@gmail.com";
        int c = dao.getAccountIDByEmail(email);
        System.out.println(c);
    }
}
