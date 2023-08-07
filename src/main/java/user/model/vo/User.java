package user.model.vo;

public class User {
	private String userId;
	private String userPw;
	private String userName;
	private String userPhone;
	private String userEmail;
	private String userEventYn;
	
	public User() {	}
	
	public User(String userId, String userPw) {
		super();
		this.userId = userId;
		this.userPw = userPw;
	}
	
	public User(String userId, String userPw, String userPhone, String userEmail, String userEventYn) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userEventYn = userEventYn;
	}

	public User(String userId, String userPw, String userName, String userPhone, String userEmail,
			String userEventYn) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userEventYn = userEventYn;
	}

	public String getuserId() {
		return userId;
	}
	public void setuserId(String userId) {
		this.userId = userId;
	}
	public String getuserPw() {
		return userPw;
	}
	public void setuserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getuserName() {
		return userName;
	}
	public void setuserName(String userName) {
		this.userName = userName;
	}
	public String getuserPhone() {
		return userPhone;
	}
	public void setuserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getuserEmail() {
		return userEmail;
	}
	public void setuserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getuserEventYn() {
		return userEventYn;
	}
	public void setuserEventYn(String userEventYn) {
		this.userEventYn = userEventYn;
	}
	
	@Override
	public String toString() {
		return "회원 [아이디=" + userId + ", 비밀번호=" + userPw + ", 이름=" + userName 
				+ ", 전화번호=" + userPhone + ", 이메일=" + userEmail
				+ ", 광고수신여부=" + userEventYn + "]";
	}
}
