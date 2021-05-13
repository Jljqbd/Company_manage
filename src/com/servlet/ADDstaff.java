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

public class ADDstaff extends HttpServlet{
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
	Staff sta = new Staff();
	sta.setSno(request.getParameter("Sno"));
	sta.setDname(request.getParameter("Dname"));
	sta.setSage(Integer.valueOf(request.getParameter("Sage")));
	sta.setSname(request.getParameter("Sname"));
	sta.setSpassword(request.getParameter("Spassword"));
	sta.setSphone(request.getParameter("Sphone"));
	sta.setSPlace(request.getParameter("Splace"));
	sta.setSpost(request.getParameter("Spost"));
	sta.setSsex(request.getParameter("Ssex"));
	sta.setSwy(Integer.valueOf(request.getParameter("Swy")));
	//System.out.println(id);
	try {
		Class.forName(strDbClass);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	String comcat ="'"+sta.getSno()+"','"+sta.getSname()+"','"+sta.getSage()+"','"+sta.getSPlace()+"','"+sta.getSsex()+"','"+sta.getSphone()+"','"+sta.getSpassword()+"','"+sta.getSpost()+"','"+sta.getSwy()+"','"+sta.getDname()+"'";
	Connection conn =null;
	Statement st  = null;
	ResultSet rs = null;
	int count = 0;
	int rst = 0;
	String postion = "";
	try {
		//
		conn = DriverManager.getConnection(strDburl,strDbuser,strDbpwd);
		//
		st = conn.createStatement();
		//
		rs = st.executeQuery("select count(*) cou from Staff where Sno='"+sta.getSno()+"'");
		//System.out.println("00000000000");
		if(rs.next()){
			count = rs.getInt("cou");
		}
		System.out.println("cou:" + count);
		if(count > 0){
			System.out.println("数据库中共有这样的数据："+ count +"条");
			request.getRequestDispatcher("/main.jsp").forward(request, response);
		}else if (count == 0){
			if(sta.getSpost().equals("General manager")||sta.getSpost().equals("Deputy General Manager")){
				if(sta.getSpost().equals("General manager")){
					postion = "Dgeneral";
				}else{
					postion = "Dfgeneral";
				}
				//
				rst = st.executeUpdate("update Staff set Spost = 'Staff' where Dname='"+sta.getDname()+"' and SPost = '"+sta.getSpost()+"'");
				System.out.println("原职位成员免职成功:"+rst);
				rst = st.executeUpdate("update Depart set "+ postion + "=' " + sta.getSname()+ "' where Dname='"+sta.getDname()+"'");
				
				System.out.println("部门表单修改操作成功:"+ rst);
			}
			rst = st.executeUpdate("insert into Staff(Sno,Sname,Sage,Splace,Ssex,Sphone,Spassword,Spost,Swy,Dname) values( "+comcat+")");
			System.out.println("操作成功："+rst);
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