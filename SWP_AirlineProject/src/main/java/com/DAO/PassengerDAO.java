/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAO;

import com.DB.DBConnection;
import com.Models.Passenger;
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
public class PassengerDAO {

    private Connection conn = null;

    public PassengerDAO() throws SQLException {
        try {
            conn = DBConnection.getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(PassengerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select * from Passenger");
        } catch (SQLException ex) {
            Logger.getLogger(PassengerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Passenger getPassenger(String PassengerID) {
        Passenger sd = null;
        try {
            PreparedStatement pst = conn.prepareStatement("Select * from Passenger where PassengerID=?");
            pst.setString(1, PassengerID);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                sd = new Passenger(rs.getString("PassengerID"), rs.getString("Full_name"), rs.getString("Number_phone"),
                        rs.getString("Citizen_identification"), rs.getString("Address"), rs.getString("Gender"), rs.getDate("DoB"), rs.getString("Username"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PassengerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sd;
    }

    public int delete(String PassengerID) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareCall("delete from Passenger where PassengerID=?");
            pst.setString(1, PassengerID);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PassengerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
}
