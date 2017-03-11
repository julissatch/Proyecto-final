/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import model.conexion;

/**
 *
 * @author KEVIN
 */
public class pdf extends HttpServlet {

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
        response.setContentType("application/pdf");
        
        OutputStream out = response.getOutputStream();
            
            try{
                
                String especialidad=request.getParameter("especialidad");
                String turno=request.getParameter("turno");
                String dia=request.getParameter("dia");
                
                Document documento=new Document();
                documento.setPageSize(PageSize.A4);
                documento.setPageSize(PageSize.A4.rotate());


//                Rectangle one = new Rectangle(70,140);
//                documento.setPageSize(one);
//                documento.setMargins(2, 2, 2, 2);
                
                
                PdfWriter.getInstance(documento, out);
                
                documento.open();
                
                Paragraph par1=new Paragraph();
                Font fonttitulo=new Font(Font.FontFamily.HELVETICA,25,Font.BOLD,BaseColor.BLACK);
                if (turno.equalsIgnoreCase("M")) {
                par1.add(new Phrase("Citas del dia: "+dia+" Turno Mañana",fonttitulo));    
                }
                else{par1.add(new Phrase("Citas del dia: "+dia+" Turno Tarde",fonttitulo));}
                
                
                par1.setAlignment(Element.ALIGN_CENTER);
                par1.add(new Phrase(Chunk.NEWLINE));
                par1.add(new Phrase(Chunk.NEWLINE));
                par1.add(new Phrase(Chunk.NEWLINE));
                documento.add(par1);
                
                PdfPTable tabla=new PdfPTable(9);
                PdfPCell celda1=new PdfPCell(new Paragraph("Codigo Cita",FontFactory.getFont("Arial", 12, Font.BOLD)));
                PdfPCell celda2=new PdfPCell(new Paragraph("Especialidad",FontFactory.getFont("Arial", 12, Font.BOLD)));
                PdfPCell celda3=new PdfPCell(new Paragraph("Codigo Paciente",FontFactory.getFont("Arial", 12, Font.BOLD)));
                PdfPCell celda4=new PdfPCell(new Paragraph("Nombre",FontFactory.getFont("Arial", 12, Font.BOLD)));
                PdfPCell celda5=new PdfPCell(new Paragraph("Apellido Paterno",FontFactory.getFont("Arial", 12, Font.BOLD)));
                PdfPCell celda6=new PdfPCell(new Paragraph("Apellido Materno",FontFactory.getFont("Arial", 12, Font.BOLD)));
                PdfPCell celda7=new PdfPCell(new Paragraph("Hora",FontFactory.getFont("Arial", 12, Font.BOLD)));
                PdfPCell celda8=new PdfPCell(new Paragraph("Doctor",FontFactory.getFont("Arial", 12, Font.BOLD)));
                PdfPCell celda9=new PdfPCell(new Paragraph("Día",FontFactory.getFont("Arial", 12, Font.BOLD)));
                
                tabla.addCell(celda1);
                tabla.addCell(celda2);
                tabla.addCell(celda3);
                tabla.addCell(celda4);
                tabla.addCell(celda5);
                tabla.addCell(celda6);
                tabla.addCell(celda7);
                tabla.addCell(celda8);
                tabla.addCell(celda9);
                
                try{
                    
                              Connection conex=conexion.obtener();
                                
                            PreparedStatement consulta2=conex.prepareStatement("call pacientegeneral_select();");
                            ResultSet resultado2=consulta2.executeQuery();
                            
                            while(resultado2.next()){
                                
                                PreparedStatement consulta=conex.prepareStatement("call cita_select();");
                            ResultSet resultado=consulta.executeQuery();
                                
                            while(resultado.next()){
                                
                                if (turno.equalsIgnoreCase("M") && resultado.getString(4).charAt(6)=='A' && resultado.getInt(3)==resultado2.getInt(1) && resultado.getString(7).equalsIgnoreCase(dia) && resultado.getString(2).equalsIgnoreCase(especialidad)) {

                                    tabla.addCell(resultado.getString(1));
                                    tabla.addCell(resultado.getString(2));
                                    tabla.addCell(resultado2.getString(1));
                                    tabla.addCell(resultado2.getString(2));
                                    tabla.addCell(resultado2.getString(3));
                                    tabla.addCell(resultado2.getString(4));
                                    tabla.addCell(resultado.getString(4));
                                    tabla.addCell(resultado.getString(5));
                                    tabla.addCell(resultado.getString(7));
                                    
                                    }
                                
                            }    
                            }
                            
                        conexion.cerrar();
                        }catch(Exception ex){JOptionPane.showMessageDialog(null, ex.toString());}
                
                
                
                
                try{
                    
                              Connection conex=conexion.obtener();
                                
                            PreparedStatement consulta2=conex.prepareStatement("call pacientegeneral_select();");
                            ResultSet resultado2=consulta2.executeQuery();
                            
                            while(resultado2.next()){
                                
                                PreparedStatement consulta=conex.prepareStatement("call cita_select();");
                            ResultSet resultado=consulta.executeQuery();
                                
                            while(resultado.next()){
                                
                                if (turno.equalsIgnoreCase("T") && resultado.getString(4).charAt(6)=='P' && resultado.getInt(3)==resultado2.getInt(1) && resultado.getString(7).equalsIgnoreCase(dia) && resultado.getString(2).equalsIgnoreCase(especialidad)) {

                                    tabla.addCell(resultado.getString(1));
                                    tabla.addCell(resultado.getString(2));
                                    tabla.addCell(resultado2.getString(1));
                                    tabla.addCell(resultado2.getString(2));
                                    tabla.addCell(resultado2.getString(3));
                                    tabla.addCell(resultado2.getString(4));
                                    tabla.addCell(resultado.getString(4));
                                    tabla.addCell(resultado.getString(5));
                                    tabla.addCell(resultado.getString(7));
                                    
                                    }
                                
                            }    
                            }
                            
                        conexion.cerrar();
                        }catch(Exception ex){JOptionPane.showMessageDialog(null, ex.toString());}
                
                
                
                
                
                
            float[] columnWidths = new float[]{15f, 30f, 18f, 23f, 23f, 23f, 20f, 25f, 18f};
                tabla.setWidths(columnWidths);
                
                            documento.add(tabla);
                            documento.close();    
                
            }catch(Exception ex){ex.getMessage();}
            
            String redirectURL="citasemana.jsp";
            response.sendRedirect(redirectURL);
            
        
        
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
