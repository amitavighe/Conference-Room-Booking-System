package dto;

public class Designation {
	private String designation;
	private String desigDesc;
	private int priority;
	
	public Designation() {
		super();
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getDesigDesc() {
		return desigDesc;
	}

	public void setDesigDesc(String desigDesc) {
		this.desigDesc = desigDesc;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}
	
}
