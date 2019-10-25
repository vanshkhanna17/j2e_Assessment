package web.clas;

import java.util.List;

public class Details {
	String type;
	String title;
	String city;
	String zpcode;
	String desc;
	String email;
	String number;
	int id;
	
	public Details(int id,String type, String title, String city, String zpcode, String desc, String email, String number){
		this.type = type;
		this.title = title;
		this.city = city;
		this.zpcode = zpcode;
		this.desc = desc;
		this.number = number;
		this.email = email;
		this.id=id;
	}
	public String getType() {
		return type;
	}

	public void setType(String type ) {
		this.type = type;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	public String getZpcode() {
		return zpcode;
	}

	public void setZpcode(String zpcode) {
		this.zpcode = zpcode;
	}
	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumber() {
		return number;
	}
	
	public void setNumber(String number) {
		this.number = number;
	}
	public int getId() {
		return id;
	}
	
	public void setNumber(int id) {
		this.id = id;
	}
}
