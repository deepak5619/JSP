package com.nt.service;

import java.util.Random;

public class RotatorService {
   private String images[]=new String[] {"images/AJIO.jpg","images/amazon.jpg","images/flipkart.jpg","images/myntra.jpg","images/paytm.jpg"};
   private String links[]=new String[] {"https://www.ajio.com/","https://www.amazon.in/","https://www.flipkart.com/","https://www.myntra.com/","https://paytm.com/"};
   
   private int count=0;
   public void nextAdvertisement() {
	   count=new Random().nextInt(5);
   }
   
   public String getImage() {
	   return images[count];
   }
   
   public String getLinks() {
	   return links[count];
   }
}
