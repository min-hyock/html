package kr.smhrd.model;

import java.util.Date;

public class CommVO {

	private String post_id;
	private String cm_detail;
	private String cm_writer;
	private Date indate;

	public CommVO() {
	}

	public CommVO(String post_id, String cm_detail, String cm_writer, Date indate) {
		super();
		this.post_id = post_id;
		this.cm_detail = cm_detail;
		this.cm_writer = cm_writer;
		this.indate = indate;
	}


	public String getPost_id() {
		return post_id;
	}

	public void setPost_id(String post_id) {
		this.post_id = post_id;
	}

	public String getCm_detail() {
		return cm_detail;
	}

	public void setCm_detail(String cm_detail) {
		this.cm_detail = cm_detail;
	}

	public String getCm_writer() {
		return cm_writer;
	}

	public void setCm_writer(String cm_writer) {
		this.cm_writer = cm_writer;
	}

	public Date getIndate() {
		return indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}

}
