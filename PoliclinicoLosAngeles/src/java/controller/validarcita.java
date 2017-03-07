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
public class validarcita extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            
            //String especialidad=request.getParameter("nombre");
            String especialidad=request.getParameter("especialidad");
            String dia=request.getParameter("dia");
            String hora=request.getParameter("hora");
            int codigopaciente=Integer.parseInt(request.getParameter("codigo"));
            int day=Integer.parseInt(request.getParameter("day"));
            int mes=Integer.parseInt(request.getParameter("mes"));
            int anio=Integer.parseInt(request.getParameter("anio"));
            String fecha=""+day+" - "+mes+" - "+anio;
            
            JOptionPane.showMessageDialog(null, "Especilidad: "+especialidad);
            JOptionPane.showMessageDialog(null, "Dia: "+dia);
            JOptionPane.showMessageDialog(null, "Hora: "+hora);
            JOptionPane.showMessageDialog(null, "Fecha: "+fecha);
            

//            request.getSession().setAttribute("codigo", codigo);
//            request.getSession().setAttribute("ddni", dni);
//            
    usuario objUsuario=new usuario();
        if (objUsuario.GetCita(especialidad.trim(),dia.trim(),hora.trim())) {
            
        String doctor=objUsuario.SearchDoctor(especialidad.trim(),dia.trim(),hora.trim());
        
                JOptionPane.showMessageDialog(null, especialidad.trim()+" "+codigopaciente+" "+hora.trim()+" "+doctor.trim()+" "+fecha.trim()+" "+dia.trim());
        
        objUsuario.SetCita(especialidad.trim(), codigopaciente, hora.trim(), doctor.trim(), fecha.trim(), dia.trim());
            
//            request.getRequestDispatcher("principal.jsp").forward(request, response);//Normal
//            response.sendRedirect("/principal.jsp");
            String redirectURL="principal.jsp";
            response.sendRedirect(redirectURL);        
        
//            String nombre=objUsuario.GetNombrePaciente(codigo, dni);
//            request.getSession().setAttribute("nombre", nombre);
//            String redirectURL="principal.jsp";
//        response.sendRedirect(redirectURL);
//            
            
        }
    else{
            
        String redirectURL="cita.jsp";
        response.sendRedirect(redirectURL);
    }
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
