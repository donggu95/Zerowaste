package dao;

public class UserObj {

	private String sid;
	private String spassword;
	private String sname;
	private String sgender;
	private String sbirth;
	private String semail;
	private String sphone;
	private String saddress;
	
	
	public UserObj(String sid, String spassword, String sname, String sgender, String sbirth, String semail,
			String sphone, String saddress) {
		super();
		this.sid = sid;
		this.spassword = spassword;
		this.sname = sname;
		this.sgender = sgender;
		this.sbirth = sbirth;
		this.semail = semail;
		this.sphone = sphone;
		this.saddress = saddress;
	}
	
	public String getSid() {
		return this.sid;
	}
	public String getSpassword() {
		return this.spassword;
	}
	public String getSname() {
		return this.sname;
	}
	public String getSgender() {
		return this.sgender;
	}
	public String getSbirth() {
		return this.sbirth;
	}
	public String getSemail() {
		return this.semail;
	}
	public String getSphone() {
		return this.sphone;
	}
	public String getSaddress() {
		return this.saddress;
	}
	

}
