/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package flowerStore.data.impl;

import flowerStore.data.dao.UserDao;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import flowerStore.data.driver.MySQLDriver;
import flowerStore.data.model.User;
import flowerStore.utils.API;

/**
 *
 * @author TG DD
 */
public class UserImpl implements UserDao {
    Connection con = MySQLDriver.getConnetion();
    @Override
    public User findUser(String emailphone,String password){
        String sql;
        if(emailphone.contains("@")){
            sql="select * from users where email='"+emailphone+"' and password='"+API.hashPassword(password)+"'";
        }else sql="select * from users where phone='"+emailphone+"' and password='"+API.hashPassword(password)+"'";
        try {
            PreparedStatement sttm = con.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            if(rs.next()) return new User(rs);
        } catch (SQLException ex) {
            Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public User findUser(String emailphone) {
        String sql;
        if(emailphone.contains("@")){
            sql="select * from users where email='"+emailphone+"'";
        }else sql="select * from users where phone='"+emailphone+"'";
        try {
            PreparedStatement sttm = con.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            if(rs.next()) return new User(rs);
        } catch (SQLException ex) {
            Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void insertUser(String name, String email, String phone, String password) {
        String sql = "insert into users(name, email, phone, password, role) values (?, ?, ?, ?, '')";

        try (PreparedStatement sttm = con.prepareStatement(sql)) {
            sttm.setString(1, name);
            sttm.setString(2, email);
            sttm.setString(3, phone);
            sttm.setString(4, password);

            sttm.executeUpdate();
            con.commit();
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
//    @Override
//    public void insertUser() {
//        String l="insert into users(name, phone, password, email, role)"
//                + "values('"+name+"','"+phone+"','"+password+"','"+email+"',)";
//        try {
//            PreparedStatement sttm = con.prepareStatement(sql);
//            sttm.execute();
//        } catch(SQLException e) {
//            e.printStackTrace();
//        }
//    }
}
