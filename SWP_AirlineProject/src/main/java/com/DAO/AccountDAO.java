/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAO;

import com.DB.DBConnection;
import com.Models.Account;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LeThiThuyVy_CE160174
 */
public class AccountDAO {

    Connection conn;

    public AccountDAO() {
        try {
            conn = DBConnection.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select * from Account ");
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Account getAccount(String Username) {
        Account account = null;
        try {
            PreparedStatement pst = conn.prepareStatement("Select * from Account where Username=?");
            pst.setString(1, Username);
            ResultSet rs = pst.executeQuery();
            rs.next();
            account = new Account(rs.getString("Username"), rs.getString("Password"), rs.getString("Email"), rs.getInt("RoleID"));
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return account;
    }
    
    
    public Account getAccountby(String username) {
        Account ac = null;
        try {
            PreparedStatement pst = conn.prepareStatement("Select * from Account WHERE Username=?");
            pst.setString(1, username);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                ac = new Account(rs.getString("Username"), rs.getString("Password"), rs.getString("Email"), rs.getInt("RoleID"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ac;
    }

//    public Account getAccountBy(String AccountID) {
//        Account account = null;
//        try {
//            PreparedStatement pst = conn.prepareStatement("Select * from Account where AccountID=?");
//            pst.setString(1, AccountID);
//            ResultSet rs = pst.executeQuery();
//            rs.next();
//            account = new Account(rs.getString("AccountID"), rs.getString("Username"), rs.getString("Password"), rs.getString("Email"), rs.getInt("RoleID"));
//        } catch (SQLException ex) {
//            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return account;
//    }
    public int addNew(Account account) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Insert into Account values(?,?,?,?,?)");
            pst.setString(2, account.getUsername());
            pst.setString(3, account.getPassword());
            pst.setString(4, account.getEmail());
            pst.setInt(5, account.getRoleID());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int delete(String Username) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Delete from Account where Username=?");
            pst.setString(1, Username);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int deleteByUsername(String Username) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareCall("delete from Passenger where Username=?");
            pst.setString(1, Username);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PassengerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    
      public int update(Account ac) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update Account set Password=?, Email=?, RoldID=? where Username=?");
            pst.setString(1, ac.Password);
            pst.setString(2, ac.Email);
            pst.setInt(3, ac.RoleID);
            pst.setString(4, ac.Username);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
    public String getTypeAccount(String AccountID) {
        String typeAcc = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account where Username=?");
            pst.setString(1, AccountID);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                typeAcc = rs.getString("RoleID");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return typeAcc;
    }
    
    public int SetTypeAdminAccount(Account ac) {
        int count = 0;
        int id = 1;
        try {
            PreparedStatement pst = conn.prepareStatement("update Account set Password=?, Email=?, RoleID=? where Username=?");
            pst.setString(1, ac.Password);
            pst.setString(2, ac.Email);
            pst.setInt(3, id);
            pst.setString(4, ac.Username);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    /**
     * Lay thong tin cua mot khach hang dua vao makh
     *
     * @param ac
     * @return mot doi tuong chua thong tin cua khach hang can tim
     */
    public int SetTypeCustomerAccount(Account ac) {
        int count = 0;
        int id = 2;
        try {
            PreparedStatement pst = conn.prepareStatement("update Account set Password=?, Email=?, RoleID=? where Username=?");
            pst.setString(1, ac.Password);
            pst.setString(2, ac. Email);
            pst.setInt(3, id);
            pst.setString(4, ac.Username);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
    
    public boolean checkUsername(String input) {
        ResultSet rs = null;
        boolean check = false;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select Username from Account");
            while (rs.next()) {
                if (input.equals(rs.getString("Username"))) {
                    check = true;
                    break;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;

    }
    public int getSize() {
        int count = 0;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select * from Account");
            while (rs.next()) {
                count++;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public String getMd5(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(password.getBytes());

            BigInteger no = new BigInteger(1, messageDigest);

            String MD5pass = no.toString(16);
            while (MD5pass.length() < 32) {
                MD5pass = "0" + MD5pass;
            }
            return MD5pass;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

}
