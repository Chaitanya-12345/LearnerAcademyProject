package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Model.StudentPOJO;
import com.Model.Teacher;
import com.util.StudentDbConn;
import com.util.TeacherDbConn;


public class TeacherDAO {
	public int insertteacher(Teacher   teacher) throws ClassNotFoundException, SQLException {
		Connection con=TeacherDbConn.getConn();
		String sql="insert into teachers values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, teacher.getId());
		ps.setString(2,teacher.getFname());
		ps.setString(3, teacher.getLname());
		ps.setInt(4,teacher.getAge());
	      return ps.executeUpdate();
	}
	
	public int updateteacher(Teacher teacher) throws ClassNotFoundException, SQLException {
		Connection con=TeacherDbConn.getConn();
		String sql=("update teachers set Fname=? where Id=?");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(2,teacher.getId());
		ps.setString(1,teacher.getFname());
		//ps.setString(2,emp.getLname());
		
		return ps.executeUpdate();
		
	}
	public int deleteteacher(Teacher teacher) throws ClassNotFoundException, SQLException {
		Connection con=TeacherDbConn.getConn();
		String sql=("delete from teachers where Id=?");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,teacher.getId());
		return ps.executeUpdate();
		
		}
	
	public List<Teacher> display() throws ClassNotFoundException, SQLException{
			Connection con=TeacherDbConn.getConn();
			List<Teacher> list=new ArrayList<Teacher>();
			String sql="select * from teachers";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Teacher pojo=new Teacher();
				pojo.setId(rs.getInt(1));
				pojo.setFname(rs.getString(2));
				pojo.setLname(rs.getString(3));
				pojo.setAge(rs.getInt(4));
			      list.add(pojo);
			}
			
			return list;
}

}
