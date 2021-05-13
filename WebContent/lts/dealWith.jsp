<%@page contentType="text/html; charset=utf-8" language="java"import="java.util.*" errorPage=""%>
<%!String msg;%>
<%
	request.setCharacterEncoding("utf-8");
	String action = request.getParameter("action");			//获取action参数值
	boolean flag = true;

	if (action.equals("login")) { //用户登录
		application.setAttribute("flag", "true");
		String username = request.getParameter("username");
		System.out.println("username:" + username);
		List userList = (List) application.getAttribute("userList");	//从Application中获取用户列表
		if (application.getAttribute("userList") == null) {
			userList = new ArrayList();
		}
			int f = 0;
			for(int i = 0; i < userList.size();i++){
					if(userList.get(i).equals(username)){
						f = 1;
					}
			}
			if (f == 0){
			userList.add(username);
			}
			application.setAttribute("userList", userList);	//保存用户列表到session中
			session.setAttribute("username", username);		//保存用户名到session中
			response.sendRedirect("main.jsp");				//将页面跳转到聊天室主界面
	}
/*-------------------------------------------------------------------------------------------------------------------------*/
	if (action.equals("loginOut")) { //离开聊天室
		application.setAttribute("flag", "false");
		String username = (String) session.getAttribute("username");
		List userList = (List) application.getAttribute("userList");
		for (int i = 0; i < userList.size(); i++) {
			String user = (String) userList.get(i);
			if (user.equals(username)) {
				userList.remove(i);			//从用户列表中移除指定用户
				session.invalidate();		//清空session
				out.println("<script language='javascript'>parent.location.href='../main.jsp';</script>");
			}
			if (userList.size() == 0) {
				application.removeAttribute("message");	//从application中删除聊天记录
			}
		}
		response.sendRedirect("../main.jsp");
	}
/*----------------------------------------------------------------------------------------------------------------------*/
	if (action.equals("showMsg")) { //查询在线人数
		String mm = (String) application.getAttribute("flag");
		String username = "";
		if (application.getAttribute("userList") != null) {
			List userList = (List) application.getAttribute("userList");	//从Application中获取用户列表
			for (int i = 0; i < userList.size(); i++) {
				String name = (String) userList.get(i);
				username = username + "<br><br>" + name;		//组合在线用户列表
			}
		}
		application.setAttribute("flag", "false");
		out.println("loadContent.innerHTML=\"" + username + "\";");		//显示在线用户列表
	}
/*----------------------------------------------------------------------------------------------------------------------*/
	if (action.equals("sendMessage")) { //发表信息
		if (msg == null) {
			msg = "<br>欢迎进入聊天室";
		}
		msg = (String) msg + "<br>" + session.getAttribute("username")
				+ ":" + (String) request.getParameter("content");		//组合聊天内容
		response.sendRedirect("down.jsp");								//将页面重定向到down.jsp页面

	}
/*----------------------------------------------------------------------------------------------------------------------*/
	if (action.equals("showMessage")) {
		if (msg != null) {
			out.println("loadContent.innerHTML=\"" + msg + "\";");	//显示聊天内容列表
		}
	}
%>
