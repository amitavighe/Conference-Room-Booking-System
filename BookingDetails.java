package dto;

import java.util.Date;

public class BookingDetails {
	private int bookId;
	private int bookedBy;
	private int roomId;
	private Date fromDate;
	private Date toDate;
	private Date bookDate;
	private String purpose;
	private int bookStatus;
	public BookingDetails() {
		super();
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public int getBookedBy() {
		return bookedBy;
	}
	public void setBookedBy(int bookedBy) {
		this.bookedBy = bookedBy;
	}
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	public Date getFromDate() {
		return fromDate;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}
	public Date getToDate() {
		return toDate;
	}
	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}
	public Date getBookDate() {
		return bookDate;
	}
	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public int getBookStatus() {
		return bookStatus;
	}
	public void setBookStatus(int bookStatus) {
		this.bookStatus = bookStatus;
	}
	
}
