package model;

import java.sql.Timestamp;

public class UserDTO {

	private int uNo;
	private String uId;
	private String uPw;
	private String uName;
	private String uEmail;
	private Timestamp uRegDate;
	
	public int getuNo() {
		return uNo;
	}
	
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	
	public String getuId() {
		return uId;
	}
	
	public void setuId(String uId) {
		this.uId = uId;
	}
	
	public String getuPw() {
		return uPw;
	}
	
	public void setuPw(String uPw) {
		this.uPw = uPw;
	}
	
	public String getuName() {
		return uName;
	}
	
	public void setuName(String uName) {
		this.uName = uName;
	}
	
	public String getuEmail() {
		return uEmail;
	}
	
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	
	public Timestamp getuRegDate() {
		return uRegDate;
	}
	
	public void setuRegDate(Timestamp uRegDate) {
		this.uRegDate = uRegDate;
	}
	
	@Override
	public String toString() {
		return "UserDTO [uNo=" + uNo + ", uId=" + uId + ", uPw=" + uPw + ", uName=" + uName + ", uEmail=" + uEmail
				+ ", uRegDate=" + uRegDate + "]";
	}
	
	
	
}