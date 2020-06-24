package com.nt.jsp;

public class CustomerBean {
   private int cno;
   private String cname;
   private String cadd;
   private float billAmt;
   
   public CustomerBean() {
	   System.out.println("CustomerBean:0-param constructer");
   }

	public int getCno() {
		return cno;
	}
	
	public String getCname() {
		return cname;
	}
	
	public String getCadd() {
		return cadd;
	}
	
	public float getBillAmt() {
		return billAmt;
	}
	
	public void setCno(int cno) {
		this.cno = cno;
	}
	
	public void setCname(String cname) {
		this.cname = cname;
	}
	
	public void setCadd(String cadd) {
		this.cadd = cadd;
	}
	
	public void setBillAmt(float billAmt) {
		this.billAmt = billAmt;
	}

	@Override
	public String toString() {
		return "CustomerBean [cno=" + cno + ", cname=" + cname + ", cadd=" + cadd + ", billAmt=" + billAmt + "]";
	}
   
}
