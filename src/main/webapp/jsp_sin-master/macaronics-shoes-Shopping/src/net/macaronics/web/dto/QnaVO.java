package net.macaronics.web.dto;

import java.sql.Timestamp;

public class QnaVO {
	
	private int qseq; //글번호
	private String subject;  //제목
	private String content;  //문의 내용
	private String reply; //답변 내용
	private String id; //작성자 아이디
	private String rep; //답변 유무
	private Timestamp indate; //작성일
	
	public int getQseq() {
		return qseq;
	}
	public void setQseq(int qseq) {
		this.qseq = qseq;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRep() {
		return rep;
	}
	public void setRep(String rep) {
		this.rep = rep;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	
	@Override
	public String toString() {
		return "QnaVO [qseq=" + qseq + ", subject=" + subject + ", content=" + content + ", reply=" + reply + ", id="
				+ id + ", rep=" + rep + ", indate=" + indate + "]";
	}
	
	
	
}
