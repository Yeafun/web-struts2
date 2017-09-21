package com.yz.action;

import com.opensymphony.xwork2.ActionSupport;

public class HelloWorld extends ActionSupport{
	
	private String viewStr;
	private String viewID;
	

	public String getViewID() {
		return viewID;
	}

	public void setViewID(String viewID) {
		this.viewID = viewID;
	}

	public String getViewStr() {
		return viewStr;
	}

	public void setViewStr(String viewStr) {
		this.viewStr = viewStr;
	}

	public String execute() throws Exception{
		System.out.println("test success!");
		this.setViewID("yeafun scofield");
		this.setViewStr("welcome my lord!");
		return SUCCESS;
	}
	
	public String print_plaintext()throws Exception{
		return "faild";
	}
	
	public String baidu()throws Exception{
		return "success";
	}
	
	public String redirectAction1()throws Exception{
		return SUCCESS;
	}
	public String toLoginJsp()throws Exception{
		return SUCCESS;
	}
}
