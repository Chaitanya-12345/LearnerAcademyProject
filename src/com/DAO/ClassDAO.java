package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Model.Classes;
import com.util.ClassDbConn;


public class ClassDAO {
	public int insertclasses(Classes c) throws ClassNotFoundException, SQLException {
	Connection con=ClassDbConn.getConn();
	String sql="insert into classes values(?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setInt(1, c.getId());
	ps.setInt(2,c.getStudentid());
	ps.setInt(3, c.getTeacherid());
	ps.setInt(4,c.getSubjectid());
	ps.setString(5, c.getTime());
	return ps.executeUpdate();
}

public int updateclass(Classes c) throws ClassNotFoundException, SQLException {
	Connection con=ClassDbConn.getConn();
	String sql=("update classes set student=? where id=?");
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setInt(2,c.getId());
	ps.setInt(1, c.getStudentid());
	//ps.setString(2,emp.getLname());
	
	return ps.executeUpdate();
	
}


public int deleteclass(Classes c) throws ClassNotFoundException, SQLException {
	Connection con=ClassDbConn.getConn();
	String sql=("delete from classes where id=?");
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setInt(1,c.getId());
	return ps.executeUpdate();
	
	}
	
	
	public List<Classes> display() throws ClassNotFoundException, SQLException{
			Connection con=ClassDbConn.getConn();
			List<Classes> list=new ArrayList<Classes>();
			String sql="select * from classes";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Classes pojo=new Classes();
				pojo.setId(rs.getInt(1));
				 pojo.setStudentid(rs.getInt(2));
				pojo.setTeacherid(rs.getInt(3));
				pojo.setSubjectid(rs.getInt(4));
				pojo.setTime(rs.getString(5));
				list.add(pojo);
			}
			
			return list;
}
	
}


	


