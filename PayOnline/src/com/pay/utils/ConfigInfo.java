package com.pay.utils;

import java.io.IOException;
import java.util.Properties;
import java.util.ResourceBundle;

public class ConfigInfo {
	
	 private static ResourceBundle cache=null;  
	 //private static Properties cache = new Properties();
	    static{    
	        cache=ResourceBundle.getBundle("com.pay.utils.merchantInfo");   
	    	/*try {
				cache.load(ConfigInfo.class.getClassLoader().getResourceAsStream("merchantInfo.properties"));
			} catch (IOException e) {
				e.printStackTrace();
			}*/
	    }    
	    //获取指定key的值    
	    public static String getValue(String key){    
	        return cache.getString(key);   
	    }    

}
