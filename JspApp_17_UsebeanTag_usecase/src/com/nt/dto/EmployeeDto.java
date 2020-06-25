package com.nt.dto;

import java.io.Serializable;

public class EmployeeDto implements Serializable {
 
   
private String ename;
   private String eadd;
   private float basicSallery;
   private float grossSallery;
   private float netSallery;
   
   public EmployeeDto() {
		System.out.println("EmployeeDto.EmployeeDto():0-param constructer");
	}
   
public String getEname() {
	return ename;
}
public String getEadd() {
	return eadd;
}
public float getBasicSallery() {
	return basicSallery;
}
public float getGrossSallery() {
	return grossSallery;
}
public float getNetSallery() {
	return netSallery;
}
public void setEname(String ename) {
	this.ename = ename;
}
public void setEadd(String eadd) {
	this.eadd = eadd;
}
public void setBasicSallery(float basicSallery) {
	this.basicSallery = basicSallery;
}
public void setGrossSallery(float grossSallery) {
	this.grossSallery = grossSallery;
}
public void setNetSallery(float netSallery) {
	this.netSallery = netSallery;
}
   
   
}
