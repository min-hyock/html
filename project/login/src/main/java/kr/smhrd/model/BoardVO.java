package kr.smhrd.model;

import java.util.Date;

public class BoardVO {

	private String post_id;
	private String post_title;
	private String post_detail;
	
	private String project_id;
	private String post_writer;
	private Date indate;
	private String user_id;
	
	
	
	public BoardVO() {
	}

	
	public BoardVO(String post_id, String post_title, String post_detail, String project_id, String post_writer, String user_id) {
		super();
		this.post_id = post_id;
		this.post_title = post_title;
		this.post_detail = post_detail;
		this.project_id = project_id;
		this.post_writer = post_writer;
		this.user_id = user_id;
	}


	public String getPost_id() {
		return post_id;
	}


	public void setPost_id(String post_id) {
		this.post_id = post_id;
	}


	public String getPost_title() {
		return post_title;
	}


	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}


	public String getPost_detail() {
		return post_detail;
	}


	public void setPost_detail(String post_detail) {
		this.post_detail = post_detail;
	}


	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	public String getPost_writer() {
		return post_writer;
	}

	public void setPost_writer(String post_writer) {
		this.post_writer = post_writer;
	}
	
	

	public Date getIndate() {
		return indate;
	}


	public void setIndate(Date indate) {
		this.indate = indate;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	
	
}
