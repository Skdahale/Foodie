/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package com.mycompany.foodi.helper;

/**
 *
 * @author 91860
 */
public class getName {

    /**
     * @param args the command line arguments
     */
    public  String getName(){
      String pName =request.getParameter("ptName");
      return pName;
    }

    private static class request {

        private static String getParameter(String ptName) {
            throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        }

        public request() {
        }
    }
}
