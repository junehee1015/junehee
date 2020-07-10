package jo.june.hee.dto;

import java.sql.Timestamp;

public class ReplyDto {
	int event_id;
	int reply_id;
	String rWriter;
	String rContent;
	String rDate;
	String rPw;
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}
	public String getrWriter() {
		return rWriter;
	}
	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public String getrPw() {
		return rPw;
	}
	public void setrPw(String rPw) {
		this.rPw = rPw;
	}
	
}
