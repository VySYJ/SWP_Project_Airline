/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Models;

/**
 *
 * @author LeThiThuyVy_CE160174
 */
public class Route {

    public String RouteID;
    public String From;
    public String To;
    public String Departure_airport;
    public String Arrival_airport;

    public Route() {
    }

    public Route(String RouteID, String From, String To, String Departure_airport, String Arrival_airport) {
        this.RouteID = RouteID;
        this.From = From;
        this.To = To;
        this.Departure_airport = Departure_airport;
        this.Arrival_airport = Arrival_airport;
    }
}
