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
public class validar extends HttpServlet {

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
            
            
            
            String tipodelogin=request.getParameter("tipodelogin");
            
            int codigo=Integer.parseInt(request.getParameter("codigo"));
            int dni=Integer.parseInt(request.getParameter("dni"));
            
            
            
                    
            usuario objUsuario=new usuario();
            
           switch(tipodelogin){
               
               case "paciente":
            
                if (objUsuario.GetDniPaciente(codigo,dni)) {
                    
            String nombre=objUsuario.GetNombrePaciente(codigo, dni);
            
            String code=String.valueOf(codigo);
            
            request.getSession().setAttribute("codigo", code);//Enviar el codigo del paciente para mostrar su nombre
            request.getSession().setAttribute("nombre", nombre);

            request.getSession().setAttribute("autorizacion",true);
            request.getSession().setAttribute("acceso",null);
            
            String redirectURL="principal.jsp";
            response.sendRedirect(redirectURL);}
                
                else{
                    request.getSession().setAttribute("acceso","");
                    String redirectURL="login.jsp";
                    response.sendRedirect(redirectURL);
                }   
                   break;
               
               
               
               case "doctor":
                   
                   
                  if (objUsuario.GetDniDoctor(codigo,dni)) {
            String especialidaddoctor=objUsuario.GetEspecialidadDoctor(codigo);
            String nombredoctor=objUsuario.GetNombreDoctor(codigo);
            request.getSession().setAttribute("especialidaddoctor", especialidaddoctor);
            request.getSession().setAttribute("nombredoctor", nombredoctor);
            
            request.getSession().setAttribute("autorizacion",true);
            request.getSession().setAttribute("acceso",null);
            
            String redirectURL="citasdoctor.jsp";
            response.sendRedirect(redirectURL);}
                
                else{
                    request.getSession().setAttribute("acceso","");
                    String redirectURL="login.jsp";
                    response.sendRedirect(redirectURL);
                }   
                   break;
                   
                   
                   
                   
               case "admin":
                  
                   if (objUsuario.GetDniAdminnistrador(codigo,dni)) {
                       
            request.getSession().setAttribute("autorizacion",true);
            request.getSession().setAttribute("acceso",null);
            
            String redirectURL="especialidades.jsp";
            response.sendRedirect(redirectURL);}
                
                else{
                    request.getSession().setAttribute("acceso","");
                    String redirectURL="login.jsp";
                    response.sendRedirect(redirectURL);
                }   
                   
                   break;
               
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
