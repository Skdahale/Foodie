
package com.mycompany.foodi.dao;

import com.mycompany.foodi.entities.Category;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class PostDao {
     
     Connection con;
     
     public PostDao(Connection con){
         this.con=con;
     }
     
     public ArrayList<Category>getAllCategories(){
         ArrayList<Category> list = new ArrayList<>();
         
         try{
             
             String q= "select * from category";
             Statement st=this.con.createStatement();
             ResultSet set=st.executeQuery(q);  
             while(set.next()){
                 int categoryId=set.getInt("categoryId");
                 String categoryTitle=set.getString("categoryTitle");
                 String categoryDescription=set.getString("categoryDescription");
                 Category c= new Category(categoryId, categoryTitle, categoryDescription);
                 list.add(c);
             }
         }catch(Exception e){
             e.printStackTrace();
         }
         return list;
     } 
     
    
}
