package hanbok.model.vo;

import java.sql.Date;

public class Hanbok {
	private String rentalUser;
	private String rentalPlace;
	private Date rentalDate;
	private String rentalHanbok;
	private String rentalTopColor;
	private String rentalTopSize;
	private String rentalPantsColor;
	private String rentalPantsSize;
	private String rentalAccessories;
	
	public Hanbok() {	}
	
	public Hanbok(String rentalPlace, Date rentalDate) {
		super();
		this.rentalPlace = rentalPlace;
		this.rentalDate = rentalDate;
	}
	
	public Hanbok(String rentalUser, String rentalPlace, Date rentalDate, String rentalHanbok, String rentalTopColor, String rentalTopSize,
			String rentalPantsColor, String rentalPantsSize, String rentalAccessories) {
		super();
		this.rentalUser = rentalUser;
		this.rentalPlace = rentalPlace;
		this.rentalDate = rentalDate;
		this.rentalHanbok = rentalHanbok;
		this.rentalTopColor = rentalTopColor;
		this.rentalTopSize = rentalTopSize;
		this.rentalPantsColor = rentalPantsColor;
		this.rentalPantsSize = rentalPantsSize;
		this.rentalAccessories = rentalAccessories;
	}

	public String getRentalUser() {
		return rentalUser;
	}

	public void setRentalUser(String rentalUser) {
		this.rentalUser = rentalUser;
	}

	public String getRentalPlace() {
		return rentalPlace;
	}
	public void setRentalPlace(String rentalPlace) {
		this.rentalPlace = rentalPlace;
	}
	public Date getRentalDate() {
		return rentalDate;
	}
	public void setRentalDate(Date rentalDate) {
		this.rentalDate = rentalDate;
	}
	public String getRentalHanbok() {
		return rentalHanbok;
	}
	public void setRentalHanbok(String rentalHanbok) {
		this.rentalHanbok = rentalHanbok;
	}
	public String getRentalTopColor() {
		return rentalTopColor;
	}
	public void setRentalTopColor(String rentalTopColor) {
		this.rentalTopColor = rentalTopColor;
	}
	public String getRentalTopSize() {
		return rentalTopSize;
	}
	public void setRentalTopSize(String rentalTopSize) {
		this.rentalTopSize = rentalTopSize;
	}
	public String getRentalPantsColor() {
		return rentalPantsColor;
	}
	public void setRentalPantsColor(String rentalPantsColor) {
		this.rentalPantsColor = rentalPantsColor;
	}
	public String getRentalPantsSize() {
		return rentalPantsSize;
	}
	public void setRentalPantsSize(String rentalPantsSize) {
		this.rentalPantsSize = rentalPantsSize;
	}
	public String getRentalAccessories() {
		return rentalAccessories;
	}
	public void setRentalAccessories(String rentalAccessories) {
		this.rentalAccessories = rentalAccessories;
	}
	@Override
	public String toString() {
		return "Hanbok [rentalPlace=" + rentalPlace + ", rentalDate=" + rentalDate + ", rentalHanbok=" + rentalHanbok
				+ ", rentalTopColor=" + rentalTopColor + ", rentalTopSize=" + rentalTopSize + ", rentalPantsColor="
				+ rentalPantsColor + ", rentalPantsSize=" + rentalPantsSize + ", rentalAccessories=" + rentalAccessories
				+ "]";
	}
}
