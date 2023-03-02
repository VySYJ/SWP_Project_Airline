/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Models;

import java.sql.Date;

/**
 *
 * @author LeThiThuyVy_CE160174
 */
public class Passenger {

    public String PassengerID;
    public String Full_name;
    public String Number_phone;
    public String Citizen_identification;
    public String Address;
    public String Gender;
    public Date DoB;
    public String Username;

    public Passenger() {
    }

    public Passenger(String PassengerID, String Full_name, String Number_phone, String Citizen_identification, String Address, String Gender, Date DoB, String Username) {
        this.PassengerID = PassengerID;
        this.Full_name = Full_name;
        this.Number_phone = Number_phone;
        this.Citizen_identification = Citizen_identification;
        this.Address = Address;
        this.Gender = Gender;
        this.DoB = DoB;
        this.Username = Username;
    }
}
