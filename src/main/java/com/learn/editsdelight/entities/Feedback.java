package com.learn.editsdelight.entities;

public class Feedback {
	private int feedbackid;
	private String username;
	private String feedbackString;
	private int rating;
	private String improvementString;
	public int getFeedbackid() {
		return feedbackid;
	}
	public void setFeedbackid(int feedbackid) {
		this.feedbackid = feedbackid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFeedbackString() {
		return feedbackString;
	}
	public void setFeedbackString(String feedbackString) {
		this.feedbackString = feedbackString;
	}
	public Feedback(int feedbackid, String username, String feedbackString, int rating, String improvementString) {
		this.feedbackid = feedbackid;
		this.username = username;
		this.feedbackString = feedbackString;
		this.rating = rating;
		this.improvementString = improvementString;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getImprovementString() {
		return improvementString;
	}
	public void setImprovementString(String improvementString) {
		this.improvementString = improvementString;
	}

}
