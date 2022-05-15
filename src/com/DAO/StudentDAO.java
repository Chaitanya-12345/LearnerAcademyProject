package com.DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Model.StudentPOJO;
import com.util.StudentDbConn;

public class StudentDAO {
	public int insertstudent(StudentPOJO student) throws ClassNotFoundException, SQLException {
		Connection con=StudentDbConn.getConn();
		String sql="insert into students values(?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, student.getId());
		ps.setString(2,student.getFname());
		ps.setString(3, student.getLname());
		ps.setInt(4,student.getAge());
		ps.setInt(5, student.getClassId());
		return ps.executeUpdate();
	}
	
	public int updatestudent(StudentPOJO student) throws ClassNotFoundException, SQLException {
		Connection con=StudentDbConn.getConn();
		String sql=("update students set fname=? where id=?");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(2,student.getId());
		ps.setString(1, student.getFname());
		//ps.setString(2,emp.getLname());
		
		return ps.executeUpdate();
		
	}
	
	
	public int deletestudent(StudentPOJO student) throws ClassNotFoundException, SQLException {
		Connection con=StudentDbConn.getConn();
		String sql=("delete from students where id=?");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,student.getId());
		return ps.executeUpdate();
		
		}
		
		
		public List<StudentPOJO> display() throws ClassNotFoundException, SQLException{
				Connection con=StudentDbConn.getConn();
				List<StudentPOJO> list=new ArrayList<StudentPOJO>();
				String sql="select * from students";
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					StudentPOJO pojo=new StudentPOJO();
					pojo.setId(rs.getInt(1));
					pojo.setFname(rs.getString(2));
					pojo.setLname(rs.getString(3));
					pojo.setAge(rs.getInt(4));
					pojo.setClassId(rs.getInt(5));
					list.add(pojo);
				}
				
				return list;
	}
		
	}


