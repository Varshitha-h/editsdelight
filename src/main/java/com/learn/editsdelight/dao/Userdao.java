package com.learn.editsdelight.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.learn.editsdelight.entities.Feedback;
import com.learn.editsdelight.entities.User;

import antlr.collections.List;

public class Userdao {

	public static User getemailandpassword(String email, String Password) {
		User user = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/editsdelight", "root",
					"root@123");
			String query = "Select * from user where email=? and pswd=? ";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, Password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setUsername(rs.getString("username"));
				user.setUemail(rs.getString("email"));
				user.setUphoneno(rs.getString("phoneno"));
				user.setUadd(rs.getString("address"));
				user.setUtype(rs.getString("usertype"));

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return user;

	}

	public int countuser() {
		int count = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/editsdelight", "root",
					"root@123");
			String qString = "select count(*) from user ";
			PreparedStatement pStatement = con.prepareStatement(qString);
			ResultSet set = pStatement.executeQuery();
			if (set.next()) {
				count = set.getInt("count(*)");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return count;

	}

	public boolean deleteUser(int iduser) {
		boolean f = false;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/editsdelight", "root",
					"root@123");
			String qString = "delete from user where iduser=?";
			PreparedStatement pStatement = con.prepareStatement(qString);
			pStatement.setInt(1, iduser);
			pStatement.executeUpdate();
			f = true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return f;
	}

	public java.util.List<Feedback> getallBlogPosts() {
		java.util.List<Feedback> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/editsdelight", "root",
					"root@123");
			String qString = "select * from feedback ";
			PreparedStatement preparedStatement = con.prepareStatement(qString);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {

				int fid = resultSet.getInt("idfeedback");
				String usernameString = resultSet.getString("username");
				String feedbackString = resultSet.getString("feedback");
				int rating=resultSet.getInt("rating");
				String improvementString=resultSet.getString("improvement");
				Feedback fbFeedback=new Feedback(fid, usernameString, feedbackString, rating, improvementString);
				list.add(fbFeedback);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;

	}
	public java.util.List<User> getallUsers(){
		
		java.util.List<User> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/editsdelight", "root",
					"root@123");
			String qString = "select * from user ";
			PreparedStatement preparedStatement = con.prepareStatement(qString);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {

				int uid = resultSet.getInt("iduser");
				String usernameString = resultSet.getString("username");
				String emailString = resultSet.getString("email");
				String passwordString=resultSet.getString("pswd");
				String phoneString=resultSet.getString("phoneno");
				String addressString=resultSet.getString("address");
				String usertypeString=resultSet.getString("usertype");
				User user=new User(uid, usernameString, emailString, passwordString, phoneString, addressString, usertypeString);
				list.add(user);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;		
	}

}
