/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Models;

/**
 *
 * @author hp
 */
public class Airplane {
    
    public String AirplaneID;
    public String Airline_company;
    public int Seats;

    public Airplane() {
    }

    public Airplane(String AirplaneID, String Airline_company, int Seats) {
        this.AirplaneID = AirplaneID;
        this.Airline_company = Airline_company;
        this.Seats = Seats;
    }
    
}
