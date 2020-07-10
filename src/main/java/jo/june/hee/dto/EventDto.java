package jo.june.hee.dto;

import java.sql.Timestamp;

public class EventDto {
	int event_id;
	String eWriter;
	String eTitle;
	String eContent;
	Timestamp eStart;
	Timestamp eEnd;
	String eFile1;
	String eFile2;
	int eHits;
	
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public String geteWriter() {
		return eWriter;
	}
	public void seteWriter(String eWriter) {
		this.eWriter = eWriter;
	}
	public String geteTitle() {
		return eTitle;
	}
	public void seteTitle(String eTitle) {
		this.eTitle = eTitle;
	}
	public String geteContent() {
		return eContent;
	}
	public void seteContent(String eContent) {
		this.eContent = eContent;
	}
	public Timestamp geteStart() {
		return eStart;
	}
	public void seteStart(Timestamp eStart) {
		this.eStart = eStart;
	}
	public Timestamp geteEnd() {
		return eEnd;
	}
	public void seteEnd(Timestamp eEnd) {
		this.eEnd = eEnd;
	}
	public String geteFile1() {
		return eFile1;
	}
	public void seteFile1(String eFile1) {
		this.eFile1 = eFile1;
	}
	public String geteFile2() {
		return eFile2;
	}
	public void seteFile2(String eFile2) {
		this.eFile2 = eFile2;
	}
	public int geteHits() {
		return eHits;
	}
	public void seteHits(int eHits) {
		this.eHits = eHits;
	}
	
}
