package com.cdac.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cdac.db.DBConnect;
import com.cdac.model.User;

@Repository
public class UserDAOImple implements UserDAO {
	@Autowired
	private User user;
	@Autowired
	private DBConnect dbConnect;
	@Override
	public int saves(User user) {
		int result=0;
		Connection con=dbConnect.getConn();
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO user_details VALUES(?,?,?,?,?)");
			ps.setInt(1,user.getId());
			ps.setString(2,user.getName());
			ps.setString(3,user.getAddress());
			ps.setInt(4,user.getAge());
			ps.setString(5,user.getPhone());
			result=ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<User> fetchAll() {
		List<User> list=new ArrayList<User>();
		try{  
			Connection con=dbConnect.getConn();
            PreparedStatement ps=con.prepareStatement("SELECT * FROM user_details");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
            	User u=new User();  
                u.setId(rs.getInt(1));  
                u.setName(rs.getString(2));  
                u.setAddress(rs.getString(3));  
                u.setAge(rs.getInt(4));  
                u.setPhone(rs.getString(5));  
                list.add(u);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}
		return list;
	}

	@Override
	public User findById(int id) {
        try{  
            Connection con=dbConnect.getConn();  
            PreparedStatement ps=con.prepareStatement("SELECT * FROM user_details WHERE user_id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                user.setId(rs.getInt(1));  
                user.setName(rs.getString(2));  
                user.setAddress(rs.getString(3));  
                user.setAge(rs.getInt(4));  
                user.setPhone(rs.getString(5));  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return user;  
	}

	@Override
	public int delete(int id) {
        int status=0;  
        try{  
            Connection con=dbConnect.getConn();  
            PreparedStatement ps=con.prepareStatement("delete from user_details where user_id=?");  
            ps.setInt(1,id);  
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;
	}

	@Override
	public int update(int id) {
        int status=0;  
        try{  
            Connection con=dbConnect.getConn();  
            PreparedStatement ps=con.prepareStatement("UPDATE user_details SET user_id=?,name=?,address=?,age=?,phone=? WHERE user_id=?");
            System.out.println(user.getId()+" "+user.getName());
            ps.setInt(1,user.getId());  
            ps.setString(2,user.getName());  
            ps.setString(3,user.getAddress());  
            ps.setInt(4,user.getAge());  
            ps.setString(5,user.getPhone()); 
            ps.setInt(6,user.getId());  
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status; 
	}

}
