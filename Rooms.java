package dto;

public class Rooms {
	private int roomId;
	private String roomName;
	private int capacity;
	private String desktop;
	private String conferencePhone;
	private String projector;
	private String soundSystem;
	
	public Rooms() {
		super();
	}
	
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public String getDesktop() {
		return desktop;
	}
	public void setDesktop(String desktop) {
		this.desktop = desktop;
	}
	public String getConferencePhone() {
		return conferencePhone;
	}
	public void setConferencePhone(String conferencePhone) {
		this.conferencePhone = conferencePhone;
	}
	public String getProjector() {
		return projector;
	}
	public void setProjector(String projector) {
		this.projector = projector;
	}
	public String getSoundSystem() {
		return soundSystem;
	}
	public void setSoundSystem(String soundSystem) {
		this.soundSystem = soundSystem;
	}
	
}
