/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlineshopping.Controllers;

import com.onlineshopping.Models.ManufactureService;
import com.onlineshopping.Models.OperatingSystemService;
import com.onlineshopping.POJO.Manufacture;
import com.onlineshopping.POJO.OperatingSystem;
import com.onlineshopping.POJO.Product;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Corncob
 */
public class ProductSevlet extends HttpServlet {

    private ArrayList<Manufacture> manufactureList;
    private ArrayList<OperatingSystem> osList;
    @Override
    public void init()
    {
        manufactureList = (ArrayList<Manufacture>) ManufactureService.getManufactureList();
        osList = (ArrayList<OperatingSystem>) OperatingSystemService.getOperatingSystemList();
    }
    
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
        int productId = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession(true);
        request.setAttribute("manufactureList", manufactureList);
        request.setAttribute("osList", osList);
        com.onlineshopping.Models.ProductService productService = new com.onlineshopping.Models.ProductService();
        Product product = new Product();
        product = productService.getProductById(productId);
        request.setAttribute("product", product);
        request.getRequestDispatcher("/WEB-INF/product.jsp").forward(request, response);
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
        processRequest(request, response);
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
