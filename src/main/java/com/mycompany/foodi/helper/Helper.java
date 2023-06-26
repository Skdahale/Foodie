
package com.mycompany.foodi.helper;


public class Helper {
    public String get10Result(String decs){
      String[] str=decs.split("");
      
        if(str.length>10){
            String res="";
            for(int i=0;i<85;i++){
                res=res+str[i];
            }
            return (res+"...");
        }
        else{
                return (decs+"...");
                }
    }
}
