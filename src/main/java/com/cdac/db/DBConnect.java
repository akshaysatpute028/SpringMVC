package com.cdac.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	
private String drivername;
private String username;
private String url;
private String password;
public String getDrivername() {
	return drivername;
}
public void setDrivername(String drivername) {
	this.drivername = drivername;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public DBConnect() {
}
public  Connection getConn()
{
	Connection conn=null;
	
		try {
			// load driver
			Class.forName(drivername);
			// establish connection
			conn= DriverManager.getConnection(url, username, password);
			// create statement
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return conn;
}


}
