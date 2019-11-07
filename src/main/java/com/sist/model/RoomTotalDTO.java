package com.sist.model;

public class RoomTotalDTO {
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
	private String r_utility;
	private String r_detail;
	private int r_meal;
	private String r_gender;
	private String r_person;
	private String r_shareutility;
	private String r_ritire;
	private double r_location1;
	private double r_location2;
	private String r_photo;
	private String o_tv;
	private String o_desk;
	private String o_bed;
	private String o_stove;
	private String o_closet;
	private String o_ac;
	private String o_micro;
	private String o_laundry;
	private String o_refri;
	private String o_parking;
	private String o_elevator;
	private String o_balcony;
	private String o_pet;
	private String ou_net;
	private String ou_tv;
	private String ou_clean;
	private String ou_gas;
	private String ou_electric;
	private String ou_water;
	private String r_photoOne; // 첫번째 이미지 경로를 저장하기 위해 선언
	private String r_monthlimit; //  단기임대를 위한 개월수
	private int m_no;
	
	 
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
	public String getR_photoOne() {
		return r_photoOne;
	}
	public void setR_photoOne(String r_photoOne) {
		this.r_photoOne = r_photoOne;
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
	public String getR_utility() {
		return r_utility;
	}
	public void setR_utility(String r_utility) {
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
	public String getR_photo() {
		return r_photo;
	}
	public void setR_photo(String r_photo) {
		this.r_photo = r_photo;
	}
	public String getO_tv() {
		return o_tv;
	}
	public void setO_tv(String o_tv) {
		this.o_tv = o_tv;
	}
	public String getO_desk() {
		return o_desk;
	}
	public void setO_desk(String o_desk) {
		this.o_desk = o_desk;
	}
	public String getO_bed() {
		return o_bed;
	}
	public void setO_bed(String o_bed) {
		this.o_bed = o_bed;
	}
	public String getO_stove() {
		return o_stove;
	}
	public void setO_stove(String o_stove) {
		this.o_stove = o_stove;
	}
	public String getO_closet() {
		return o_closet;
	}
	public void setO_closet(String o_closet) {
		this.o_closet = o_closet;
	}
	public String getO_ac() {
		return o_ac;
	}
	public void setO_ac(String o_ac) {
		this.o_ac = o_ac;
	}
	public String getO_micro() {
		return o_micro;
	}
	public void setO_micro(String o_micro) {
		this.o_micro = o_micro;
	}
	public String getO_laundry() {
		return o_laundry;
	}
	public void setO_laundry(String o_laundry) {
		this.o_laundry = o_laundry;
	}
	public String getO_refri() {
		return o_refri;
	}
	public void setO_refri(String o_refri) {
		this.o_refri = o_refri;
	}
	public String getO_parking() {
		return o_parking;
	}
	public void setO_parking(String o_parking) {
		this.o_parking = o_parking;
	}
	public String getO_elevator() {
		return o_elevator;
	}
	public void setO_elevator(String o_elevator) {
		this.o_elevator = o_elevator;
	}
	public String getO_balcony() {
		return o_balcony;
	}
	public void setO_balcony(String o_balcony) {
		this.o_balcony = o_balcony;
	}
	public String getO_pet() {
		return o_pet;
	}
	public void setO_pet(String o_pet) {
		this.o_pet = o_pet;
	}
	public String getOu_net() {
		return ou_net;
	}
	public void setOu_net(String ou_net) {
		this.ou_net = ou_net;
	}
	public String getOu_tv() {
		return ou_tv;
	}
	public void setOu_tv(String ou_tv) {
		this.ou_tv = ou_tv;
	}
	public String getOu_clean() {
		return ou_clean;
	}
	public void setOu_clean(String ou_clean) {
		this.ou_clean = ou_clean;
	}
	public String getOu_gas() {
		return ou_gas;
	}
	public void setOu_gas(String ou_gas) {
		this.ou_gas = ou_gas;
	}
	public String getOu_electric() {
		return ou_electric;
	}
	public void setOu_electric(String ou_electric) {
		this.ou_electric = ou_electric;
	}
	public String getOu_water() {
		return ou_water;
	}
	public void setOu_water(String ou_water) {
		this.ou_water = ou_water;
	}	
}
