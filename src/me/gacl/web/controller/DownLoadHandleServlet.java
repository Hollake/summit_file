package me.gacl.web.controller;
 
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.nio.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
 
public class DownLoadHandleServlet extends HttpServlet {
 
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                //得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
		    	//消息提示
    			request.setCharacterEncoding("UTF-8");
		        String message = null;
		        String savePath = null;
            	String realSavePath = null;
                String defaultSavePath = "E:\\Java_code\\summit_file\\save\\";
                File defaultFile = new File(defaultSavePath);
                String downloadpath = request.getParameter("downloadpath");
                realSavePath = makeSavePath(downloadpath,defaultSavePath);
                File file = new File(realSavePath);
                //判断上传文件的保存目录是否存在
                if (!file.exists() && !file.isDirectory()) {
                    message = "目录或文件不存在";
                    request.setAttribute("message", message);
    	            request.getRequestDispatcher("/message.jsp").forward(request, response);
                }

	            //存储要下载的文件名
	            Map<String,String> fileNameMap = new HashMap<String,String>();
	            //递归遍历filepath目录下的所有文件和目录，将文件的文件名存储到map集合中
	            ListFileServlet fileServlet = new ListFileServlet();
	            fileServlet.listfile(new File(realSavePath),fileNameMap);//File既可以代表一个文件也可以代表一个目录
	            //将Map集合发送到listfile.jsp页面进行显示
	            request.setAttribute("fileNameMap", fileNameMap);
	            request.getRequestDispatcher("/listfile.jsp").forward(request, response);
    }
 
    private String makeSavePath(String savePath, String defaultSavePath) {
    	if(savePath == null || savePath.isEmpty()) {
    		return  defaultSavePath;
    	}else {
    		return  savePath;
    	}
	}
    
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        doGet(request, response);
    }
}