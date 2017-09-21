package com.yz.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport{
	
	private static final long seriaVersionUID=1L;
	private String username;
	private File file1;
	private String file1FileName;
	private String file1ContentType;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public File getFile1() {
		return file1;
	}
	public void setFile1(File file1) {
		this.file1 = file1;
	}
	public String getFile1FileName() {
		return file1FileName;
	}
	public void setFile1FileName(String file1FileName) {
		this.file1FileName = file1FileName;
	}
	public String getFile1ContentType() {
		return file1ContentType;
	}
	public void setFile1ContentType(String file1ContentType) {
		this.file1ContentType = file1ContentType;
	}
	public static long getSeriaversionuid() {
		return seriaVersionUID;
	}

    public String execute() throws Exception{
    	String path =ServletActionContext.getServletContext().getRealPath("/upload");
    	OutputStream os = new FileOutputStream(new File(path,file1FileName));
    	InputStream is =new FileInputStream(file1);
    	byte[] buffer =new byte[1024];
    	int length=0;
    	while((length=is.read(buffer, 0, buffer.length))>0){
    		os.write(buffer, 0, length);
    	}
    	is.close();
    	os.close();
    	return SUCCESS;
    }
}
