package com.servlet;

//DemoCom
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddPM extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String Dno = request.getParameter("Dno");
		String Dname = request.getParameter("Dname");
		String Dgeneral = request.getParameter("Dgeneral");
		String Dfgeneral = request.getParameter("Dfgeneral");
		String Dnum = request.getParameter("Dnum");
		String Dduty = request.getParameter("Dduty");
		String comcat ="'"+Dno+"','"+Dname+"','"+Dgeneral+"','"+Dfgeneral+"','"+Dnum+"','"+Dduty+"'";
		// TODO Auto-generated method stub
		
		
		String strDbClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		// com.microsoft.sqlserver.jdbc.SQLServerDriver
		String strDburl = "jdbc:sqlserver://localhost:1433;DatabaseName=yggl";
		String strDbuser = "root";
		String strDbpwd = "root";
		Depart dm = null;
//		List<Depart> DM = new LinkedList<Depart>();
		try {
			Class.forName(strDbClass);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Connection conn = null;
		Statement st = null;
		int rs = 0;
		int count = 0;

		try {
			// System.out.println("-1");
			conn = DriverManager.getConnection(strDburl, strDbuser, strDbpwd);
			// System.out.println("0");
			st = conn.createStatement();
			// System.out.println("1");
			String sql="insert into Depart(Dno,Dname,Dgeneral,Dfgeneral,Dnum,Dduty) values( "+comcat+")";
			rs = st.executeUpdate(sql);


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			// System.out.println("cuole");
			e.printStackTrace();
		} finally {
//			if (rs != null) {
//				try {
//					rs.close();
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
			if (st != null) {
				try {
					st.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		//request.getRequestDispatcher("/depart.jsp").forward(request, response);
		
		
	}

}
