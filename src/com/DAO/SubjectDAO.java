package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Model.Subject;
import com.util.SubjectDbConn;


public class SubjectDAO {
	public int insertsubject(Subject sub) throws ClassNotFoundException, SQLException {
		Connection con=SubjectDbConn.getConn();
		String sql="insert into subjects values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sub.getId());
		ps.setString(2,sub.getName());
		ps.setString(3, sub.getShortcutname());
        return ps.executeUpdate();
	}
	
	public int updatesubject(Subject sub) throws ClassNotFoundException, SQLException {
		Connection con=SubjectDbConn.getConn();
		String sql=("update subjects set name=? where id=?");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(2,sub.getId());
		ps.setString(1,sub.getName());
		//ps.setString(2,emp.getLname());
		
		return ps.executeUpdate();
		
	}
	
	
	public int deletesubject(Subject sub) throws ClassNotFoundException, SQLException {
		Connection con=SubjectDbConn.getConn();
		String sql=("delete from subjects where id=?");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,sub.getId());
		return ps.executeUpdate();
		
		}
		
		
		public List<Subject> display() throws ClassNotFoundException, SQLException{
				Connection con=SubjectDbConn.getConn();
				List<Subject> list=new ArrayList<Subject>();
				String sql="select * from subjects";
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					Subject sub=new Subject();
					sub.setId(rs.getInt(1));
					sub.setName(rs.getString(2));
					sub.setShortcutname(rs.getString(3));
					list.add(sub);
				}
				return list;
		}
			
		}

				


