/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import model.DAO.usuario;

/**
 *
 * @author KEVIN
 */
public class validaractualizar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int codigo=Integer.parseInt(request.getParameter("codigo"));
            String nombre=request.getParameter("nombre");
            String paterno=request.getParameter("paterno");
            String materno=request.getParameter("materno");
            String sexo=request.getParameter("sexo");
            int dni=Integer.parseInt(request.getParameter("dni"));
            int edad=Integer.parseInt(request.getParameter("edad"));
            double peso=Double.parseDouble(request.getParameter("peso"));
            double talla=Double.parseDouble(request.getParameter("talla"));
            String fecha=request.getParameter("fecha");
//            String tipo=request.getParameter("tipo");

//            request.getSession().setAttribute("codigo", codigo);
//            request.getSession().setAttribute("codigo", codigo);
//            
    usuario objUsuario=new usuario();
    
            objUsuario.UpdatePaciente(codigo, nombre, paterno, materno, sexo, dni, edad, peso, talla, fecha);

            String redirectURL="pacientes.jsp";
            response.sendRedirect(redirectURL);
//    
//        if (objUsuario.GetDniPaciente(codigo,dni)) {
//            //request.getRequestDispatcher("principal.jsp").forward(request, response);//Normal
//            //response.sendRedirect("/principal.jsp");
//            String nombre=objUsuario.GetNombrePaciente(codigo, dni);
//            request.getSession().setAttribute("nombre", nombre);
//            String redirectURL="principal.jsp";
//        response.sendRedirect(redirectURL);
//            
//        }
//    else{
//        //out.println("Está mal! Dumb!");
//        String redirectURL="login.jsp";JOptionPane.showMessageDialog(null, "54");
//        response.sendRedirect(redirectURL);
//    }
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
