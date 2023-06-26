
package com.mycompany.foodi.dao;

import com.mysql.cj.xdevapi.SessionFactory;


public class UserDao {
    private SessionFactory factory;
    
    public UserDao(SessionFactory factory){
        this.factory=factory;
    }
    
    // get email and password
    
//    public User getUserByEmailAndPassword(String email,String password){
//        User user=null;
//        
//        try{
//            
//        }catch(Exception e){
//            e.printStackTrace();
//        }
//        return user;
//        
//    }
}
