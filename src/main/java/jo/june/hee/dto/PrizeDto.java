package jo.june.hee.dto;

import java.sql.Timestamp;

public class PrizeDto {
	int prize_id;
	String pWriter;
	String pTitle;
	String pContent;
	Timestamp pDate;
	String pFile;
	String pHits;
	
	public int getPrize_id() {
		return prize_id;
	}
	public void setPrize_id(int prize_id) {
		this.prize_id = prize_id;
	}
	public String getpWriter() {
		return pWriter;
	}
	public void setpWriter(String pWriter) {
		this.pWriter = pWriter;
	}
	public String getpTitle() {
		return pTitle;
	}
	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}
	public String getpContent() {
		return pContent;
	}
	public void setpContent(String pContent) {
		this.pContent = pContent;
	}
	public Timestamp getpDate() {
		return pDate;
	}
	public void setpDate(Timestamp pDate) {
		this.pDate = pDate;
	}
	public String getpFile() {
		return pFile;
	}
	public void setpFile(String pFile) {
		this.pFile = pFile;
	}
	public String getpHits() {
		return pHits;
	}
	public void setpHits(String pHits) {
		this.pHits = pHits;
	}
	
}
