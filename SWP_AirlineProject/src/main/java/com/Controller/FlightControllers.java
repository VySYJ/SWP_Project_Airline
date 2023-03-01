
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.Controller;

import com.DAO.FlightDAO;
import com.Models.Flight;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;


/**
 *
 * @author Quoc Thang
 */
public class FlightControllers extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>FlightControllers</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FlightControllers " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getRequestURI();
        if (path.endsWith("/Flight")) {
            request.getRequestDispatcher("FlightManagement.jsp").forward(request, response);
        } else {
            if (path.endsWith("/Flight/Create")) {
                request.getRequestDispatcher("/AddFlight.jsp").forward(request, response);
            } else {
                if (path.startsWith("/Flight/Edit/")) {
                    String[] s = path.split("/");
                    String FlightScheduleID = s[s.length - 1];
                    FlightDAO dao = new FlightDAO();
                    Flight kh = dao.getFlight(FlightScheduleID);
                    if (FlightScheduleID== null) {
                        response.sendRedirect("/Flight");
                    } else {
                        HttpSession session = request.getSession();
                        session.setAttribute("flight", kh);
                        request.getRequestDispatcher("/UpdateFlight.jsp").forward(request, response);
                    }
                } else {
                    if (path.startsWith("/Flight/Delete")) {
                        String[] s = path.split("/");
                        String FlightScheduleID = s[s.length - 1];
                        FlightDAO dao = new FlightDAO();
                        dao.delete(FlightScheduleID);
                        response.sendRedirect("/Flight");
                    }
                }
            }
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("btnInsert") != null) {
            String FlightScheduleID = request.getParameter("textIDFlight");
            String Flight_date = request.getParameter("dteG");
            String Arrival_date = request.getParameter("dteT");
            String Departure_time = request.getParameter("texttimego");
            String Arrive_time = request.getParameter("texttimeto");
            String From = request.getParameter("textFrom");
            String To = request.getParameter("textTo");
            String Departure_airport = request.getParameter("textSbG");
            String Arrival_airport = request.getParameter("textSbT");
            String AirplaneID = request.getParameter("txtIDAirplane");
            Flight su = new Flight(FlightScheduleID, Date.valueOf(Flight_date), Date.valueOf(Arrival_date ),Departure_time, Arrive_time, From, To,  Departure_airport, Arrival_airport, AirplaneID);
            FlightDAO dao = new FlightDAO();
            int count = dao.addNew(su);
            if (count > 0) {
                response.sendRedirect("/Flight");
            } else {
                response.sendRedirect("/Flight/Create");
            }
        }

        if (request.getParameter("btnUpdate") != null) {
            String FlightScheduleID = request.getParameter("textIDFlight");
            String Flight_date = request.getParameter("dteG");
            String Arrival_date = request.getParameter("dteT");
            String Departure_time = request.getParameter("texttimego");
            String Arrive_time = request.getParameter("texttimeto");
            String From = request.getParameter("textFrom");
            String To = request.getParameter("textTo");
            String Departure_airport = request.getParameter("textSbG");
            String Arrival_airport = request.getParameter("textSbT");
            String AirplaneID = request.getParameter("txtIDAirplane");

            FlightDAO dao = new FlightDAO();
            Flight st = new Flight(FlightScheduleID, Date.valueOf(Flight_date), Date.valueOf(Arrival_date ),Departure_time, Arrive_time, From, To,  Departure_airport, Arrival_airport, AirplaneID);
            dao.update(st);

            response.sendRedirect("/Flight");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
