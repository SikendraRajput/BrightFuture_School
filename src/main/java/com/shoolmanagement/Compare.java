package com.shoolmanagement;

public class Compare implements Comparable<Compare>{
      public String name;
      public String ro_no;
      public int cla_ss;
      
     public Compare(String name,String ro_no,int cla_ss){
    	  this.name=name;
    	  this.ro_no=ro_no;
    	  this.cla_ss=cla_ss;
      }
      public int compareTo(Compare cmp) {
    	  
    	  if(this.cla_ss < cmp.cla_ss) 
    		  return -1;
    	  
    	  else if(this.cla_ss > cmp.cla_ss)
    		  return 1;
    	  
    	  else 
    		  return 0;
    	  
      }
}
