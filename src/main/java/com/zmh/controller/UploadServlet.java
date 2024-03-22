package com.zmh.controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(description = "文件上传", urlPatterns = {"/upload"})
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private String filePath;
    private int maxFileSize = 102400 * 10240;

    public void init() {
        filePath = "E:\\java\\MovieManageSystem\\src\\main\\webapp\\images\\movie";
        File file = new File(filePath);
        System.out.println(filePath);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, java.io.IOException {
        System.out.println(456144514);
        response.setContentType("text/plain");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(maxFileSize);

        try {
            List<FileItem> fileItems = upload.parseRequest(request);
            for (FileItem fileItem : fileItems) {
                FileItem fi = fileItem;
                if (!fi.isFormField()) {
                    String fileName = fi.getName();
                    File file = new File(filePath + File.separator + fileName);

                    fi.write(file);
                    out.println(fileName + "上传成功");
                    System.out.println(fileName);
                }
            }
        } catch (Exception ex) {
            out.println("上传文件失败:" + ex.getMessage());
        } finally {
            out.close();
        }
    }
}