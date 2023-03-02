/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.Controller;

import com.DAO.AccountDAO;
import com.DAO.PassengerDAO;
import com.Models.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Thiết Béo
 */
public class AccountManagementController extends HttpServlet {

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
            out.println("<title>Servlet AccountManagementController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AccountManagementController at " + request.getContextPath() + "</h1>");
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
        if (path.endsWith("/Account")) {
            request.getRequestDispatcher("/AccountManagement.jsp").forward(request, response); //này là bài mới bị lỗi nè
        }
        if (path.startsWith("/Account/Delete/")) {
            
                String[] s = path.split("/");
                String Username = s[s.length - 1];
                
                AccountDAO dao = new AccountDAO();
                
                    dao.deleteByUsername(Username);
                     dao.delete(Username);
                response.sendRedirect("/Account");

        } else {
                if (path.startsWith("/Account/Change/")) {
                        String[] s = path.split("/");
                        String username = s[s.length - 1];
                        AccountDAO dao = new AccountDAO();
                        String TypeAccount = dao.getTypeAccount(username);
                        if (TypeAccount.equals("2")) {
                            Account ac;
                            ac = dao.getAccount(username);
                            dao.SetTypeAdminAccount(ac);
                            response.sendRedirect("/Account");
                        } else if (TypeAccount.equals("1")) {
                            Account ac;
                            ac = dao.getAccount(username);
                            dao.SetTypeCustomerAccount(ac);
                            response.sendRedirect("/Account");
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
        processRequest(request, response);

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
