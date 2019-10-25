package web.clas;

public class Reply {
	int id = 1;
	String email;
	String number;
	String name;
	public Reply(String name, String email, String number){
		this.name = name;
		this.number = number;
		this.email = email;
		id++;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail() {
		return email;
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
	
	public void setId(int id) {
		this.id = id;
	}
}
