/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlineshopping.Controllers;

import com.onlineshopping.Models.ManufactureService;
import com.onlineshopping.Models.OperatingSystemService;
import com.onlineshopping.Models.ProductService;
import com.onlineshopping.POJO.Cart;
import com.onlineshopping.POJO.Manufacture;
import com.onlineshopping.POJO.OperatingSystem;
import com.onlineshopping.POJO.Product;
import com.onlineshopping.POJO.User;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Corncob
 */
public class CartServlet extends HttpServlet {

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
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("user");

        if (user == null)
        {
            response.sendRedirect("unauthorized.html");
        }
        else
        {
            ArrayList<Cart> carts = (ArrayList<Cart>) session.getAttribute("carts");
            long totalAmount = 0;
            if (carts != null)
            {
                
                for(Cart cart: carts)
                {
                    totalAmount += cart.getPrice() * cart.getQuantity();
                }
            }
            session.setAttribute("totalAmount", totalAmount);
            request.setAttribute("manufactureList", manufactureList);
            request.setAttribute("osList", osList);
            request.getRequestDispatcher("/WEB-INF/carts.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        Cart cart = new Cart();
        User user = null;
        Product product = null;
        ArrayList<Cart> carts = null;
        HttpSession session = request.getSession(true);
        user = (User) session.getAttribute("user");

        if (user == null)
        {
            response.sendRedirect("unauthorized.html");
        } 
        else
        {
            try
            {
                carts = (ArrayList<Cart>) session.getAttribute("carts");
                cart.setProductId(Long.parseLong(request.getParameter("productid")));
                cart.setColor(request.getParameter("color"));
                cart.setQuantity(Integer.parseInt(request.getParameter("quantity")));
                cart.setUserId(user.getId());
                
                ProductService productService = new ProductService();
                product = productService.getProductById((int) cart.getProductId());

                cart.setProductName(product.getName());
                cart.setPrice(product.getPrice());
                boolean productIsInCartAlready = false;
                if (carts != null) {
                    for (int i = 0; i < carts.size(); i++) {
                        if (Objects.equals(carts.get(i).getProductId(), cart.getProductId())
                                && carts.get(i).getColor().equals(cart.getColor()))
                        {
                            int newQuantity = carts.get(i).getQuantity() + cart.getQuantity();
                            cart.setQuantity(newQuantity);
                            carts.set(i, cart);
                            productIsInCartAlready = true;
                            break;
                        }
                    }
                }
                else
                {
                    carts = new ArrayList<>();
                }
                if (!productIsInCartAlready) {
                    carts.add(cart);
                }
            }
            catch (Exception e)
            {

            }
            session.setAttribute("carts", carts);
            //request.setAttribute("manufactureList", manufactureList);
            //request.setAttribute("osList", osList);
            //request.getRequestDispatcher("/WEB-INF/carts.jsp").forward(request, response);
            response.sendRedirect("carts.html");
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
