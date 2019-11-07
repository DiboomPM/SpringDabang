package com.sist.model;

public class RoomDTO {
   
   private int r_no;
   private String r_btype;
   private String r_type;
   private String r_address;
   private String r_rentfee;
   private String r_deposit;
   private String r_dimension;
   private String r_floor;
   private String r_heating;
   private String r_movedate;
   private int r_utility;
   private String r_detail;
   private int r_meal;
   private String r_gender;
   private String r_person;
   private String r_shareutility;
   private String r_ritire;
   private double r_location1;
   private double r_location2;
   private String r_photo;
   private String r_monthlimit;
   private int m_no; // 회원 넘버
   
   
   
   public int getM_no() {
	return m_no;
}

public void setM_no(int m_no) {
	this.m_no = m_no;
}

public String getR_monthlimit() {
	return r_monthlimit;
}

public void setR_monthlimit(String r_monthlimit) {
	this.r_monthlimit = r_monthlimit;
}

private RoomOptionDTO rodto;
   
	public RoomOptionDTO getRodto() {
		return rodto;
	}

	public void setRodto(RoomOptionDTO rodto) {
		this.rodto = rodto;
	}

   
   
   public String getR_photo() {
      return r_photo;
   }
   public void setR_photo(String r_photo) {
      this.r_photo = r_photo;
   }
   public int getR_no() {
   return r_no;
   }
   public void setR_no(int r_no) {
      this.r_no = r_no;
   }
   public String getR_btype() {
      return r_btype;
   }
   public void setR_btype(String r_btype) {
      this.r_btype = r_btype;
   }
   public String getR_type() {
      return r_type;
   }
   public void setR_type(String r_type) {
      this.r_type = r_type;
   }
   public String getR_address() {
      return r_address;
   }
   public void setR_address(String r_address) {
      this.r_address = r_address;
   }
   public double getR_location1() {
      return r_location1;
   }
   public void setR_location1(double r_location1) {
      this.r_location1 = r_location1;
   }
   public double getR_location2() {
      return r_location2;
   }
   public void setR_location2(double r_location2) {
      this.r_location2 = r_location2;
   }
   public String getR_rentfee() {
      return r_rentfee;
   }
   public void setR_rentfee(String r_rentfee) {
      this.r_rentfee = r_rentfee;
   }
   public String getR_deposit() {
      return r_deposit;
   }
   public void setR_deposit(String r_deposit) {
      this.r_deposit = r_deposit;
   }
   public String getR_dimension() {
      return r_dimension;
   }
   public void setR_dimension(String r_dimension) {
      this.r_dimension = r_dimension;
   }
   public String getR_floor() {
      return r_floor;
   }
   public void setR_floor(String r_floor) {
      this.r_floor = r_floor;
   }
   public String getR_heating() {
      return r_heating;
   }
   public void setR_heating(String r_heating) {
      this.r_heating = r_heating;
   }
   public String getR_movedate() {
      return r_movedate;
   }
   public void setR_movedate(String r_movedate) {
      this.r_movedate = r_movedate;
   }
   public int getR_utility() {
      return r_utility;
   }
   public void setR_utility(int r_utility) {
      this.r_utility = r_utility;
   }

   public String getR_detail() {
      return r_detail;
   }
   public void setR_detail(String r_detail) {
      this.r_detail = r_detail;
   }
   public int getR_meal() {
      return r_meal;
   }
   public void setR_meal(int r_meal) {
      this.r_meal = r_meal;
   }
   public String getR_gender() {
      return r_gender;
   }
   public void setR_gender(String r_gender) {
      this.r_gender = r_gender;
   }
   public String getR_person() {
      return r_person;
   }
   public void setR_person(String r_person) {
      this.r_person = r_person;
   }
   public String getR_shareutility() {
      return r_shareutility;
   }
   public void setR_shareutility(String r_shareutility) {
      this.r_shareutility = r_shareutility;
   }
   public String getR_ritire() {
      return r_ritire;
   }
   public void setR_ritire(String r_ritire) {
      this.r_ritire = r_ritire;
   }

@Override
public String toString() {
	return "RoomDTO [r_no=" + r_no + ", r_btype=" + r_btype + ", r_type=" + r_type + ", r_address=" + r_address
			+ ", r_rentfee=" + r_rentfee + ", r_deposit=" + r_deposit + ", r_dimension=" + r_dimension + ", r_floor="
			+ r_floor + ", r_heating=" + r_heating + ", r_movedate=" + r_movedate + ", r_utility=" + r_utility
			+ ", r_detail=" + r_detail + ", r_meal=" + r_meal + ", r_gender=" + r_gender + ", r_person=" + r_person
			+ ", r_shareutility=" + r_shareutility + ", r_ritire=" + r_ritire + ", r_location1=" + r_location1
			+ ", r_location2=" + r_location2 + ", r_photo=" + r_photo + ", r_monthlimit=" + r_monthlimit + ", m_no="
			+ m_no + ", rodto=" + rodto + "]";
}


   
   
}


