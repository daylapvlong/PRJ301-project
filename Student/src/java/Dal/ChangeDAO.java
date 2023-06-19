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
    
    public static void main(String[] args) {
        ChangeDAO dao = new ChangeDAO();
//        String id = "1";
//        Account c = dao.getAccountById(id);
//        System.out.println(c);
        List<Account> list = dao.getAllAccount();
        System.out.println(list);
    }
}
