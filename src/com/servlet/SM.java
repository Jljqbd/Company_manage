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

public class SM extends HttpServlet{
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
	Staff sta = null;
	List<Staff> SL = new LinkedList<Staff>();
	String reqUrl = request.getHeader("Referer");
	String id = request.getParameter("id");
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
		rs = st.executeQuery("select * from Staff");
		while(rs.next())
		{
			sta = new Staff();
			sta.setSno(rs.getString("Sno"));
			sta.setSname(rs.getString("Sname"));
			sta.setSage(rs.getInt("Sage"));
			sta.setSPlace(rs.getString("SPlace"));
			sta.setSsex(rs.getString("Ssex"));
			sta.setSphone(rs.getString("Sphone"));
			sta.setSpost(rs.getString("Spost"));
			sta.setSwy(rs.getInt("Swy"));
			SL.add(sta);
		}
		request.setAttribute("SL", SL);
		//这里是转发，从Servlet跳转到showinfo.jsp页面，并且带上request和response对象中原有的参数
		if(id.equals("1")){
		request.getRequestDispatcher("/empManage.jsp").forward(request, response);
		}else
		if(id.equals("2")){
			request.getRequestDispatcher("/positionManage.jsp").forward(request, response);
		}
			
		
	
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

