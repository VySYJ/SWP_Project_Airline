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
public class Flight {

    public String FlightScheduleID;
    public Date Flight_date;
    public Date Arrival_date;
    public String Departure_time;
    public String Arrive_time;
    public String From;
    public String To;
    public String Departure_airport;
    public String Arrival_airport;
    public String AirplaneID;

    public Flight() {
    }

    public Flight(String FlightScheduleID, Date Flight_date, Date Arrival_date, String Departure_time, String Arrive_time, String From, String To, String Departure_airport, String Arrival_airport, String AirplaneID) {
        this.FlightScheduleID = FlightScheduleID;
        this.Flight_date = Flight_date;
        this.Arrival_date = Arrival_date;
        this.Departure_time = Departure_time;
        this.Arrive_time = Arrive_time;
        this.From = From;
        this.To = To;
        this.Departure_airport = Departure_airport;
        this.Arrival_airport = Arrival_airport;
        this.AirplaneID = AirplaneID;
    }
}
