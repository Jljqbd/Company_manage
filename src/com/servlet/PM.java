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

public class PM extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

doPost(request, response);
}

public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
	// TODO Auto-generated method stub
	String strDbClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	//com.microsoft.sqlserver.jdbc.SQLServerDriver
	String strDburl = "jdbc:sqlserver://localhost:1433;DatabaseName=yggl";
	String strDbuser = "root";
	String strDbpwd = "root";
	Depart dm = null;
	List<Depart> DM = new LinkedList<Depart>();
	try {
		Class.forName(strDbClass);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	Connection conn =null;
	Statement st  = null;
	ResultSet rs = null;
	int count = 0;
	
	try {
		//System.out.println("-1");
		conn = DriverManager.getConnection(strDburl,strDbuser,strDbpwd);
		//System.out.println("0");
		st = conn.createStatement();
		//System.out.println("1");
		rs = st.executeQuery("select * from Depart");
		while(rs.next())
		{
			dm = new Depart();
			dm.setDno(rs.getString("Dno"));
			dm.setDname(rs.getString("Dname"));
			dm.setDgeneral(rs.getString("Dgeneral"));
			dm.setDfgeneral(rs.getString("Dfgeneral"));
			dm.setDnum(rs.getInt("Dnum"));
			dm.setDduty(rs.getString("Dduty"));
			DM.add(dm);
		}
		request.setAttribute("DM", DM);
		//这里是转发，从Servlet跳转到showinfo.jsp页面，并且带上request和response对象中原有的参数
		request.getRequestDispatcher("/depart.jsp").forward(request, response);
			
		
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		//System.out.println("cuole");
		e.printStackTrace();
	}finally{
		if(rs!=null)
		{
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(st!=null)
		{
			try {
				st.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(conn!=null)
		{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	

}

}

