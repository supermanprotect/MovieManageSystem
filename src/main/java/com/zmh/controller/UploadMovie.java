package com.zmh.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@RestController
public class UploadMovie{

    @RequestMapping("/upload")
    public String test09(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) throws IOException {
        // 获取文件上传到具体文件夹的绝对路径
        System.out.println("ftftyy54646");
        // String realpath = request.getSession().getServletContext().getRealPath("upload");
        String realpath = "E:\\java\\MovieManageSystem\\src\\main\\webapp\\images\\movie";
        System.out.println(realpath);
        // 获取上传的文件名
        String fileName = multipartFile.getOriginalFilename();
        //为了确保上传文件的重名问题，对文件名进行处理
//        fileName = UUID.randomUUID().toString() +"_"+ fileName;
        // 根据路径构建文件对象
        // 在构建过程中一定要注意路径问题
        File uploadFile = new File(realpath, fileName);
        // 判断指定文件夹uploadfiles是否存在，不存在就创建
        if (!uploadFile.exists()) {
            uploadFile.mkdirs();
        }
        // 上传文件
        multipartFile.transferTo(uploadFile);
        return "OK";
    }

}
