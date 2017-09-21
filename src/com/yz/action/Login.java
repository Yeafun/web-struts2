package com.yz.action;

import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport{
	public String login_name;
	public String login_password;
	public String execute()throws Exception{
		System.out.println("test login_name:"+login_name);
		System.out.println("test login_password:"+login_password);
		if(this.login_name.equals("yeafun")&&this.login_password.equals("123"))
			return SUCCESS;
		else
			return ERROR;
	}


}
