package com.mtcoding.test01.controller;

import com.mtcoding.test01.model.Super;
import com.mtcoding.test01.model.SuperRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class SuperController {

    @Autowired
    private SuperRepository superRepository;

    @GetMapping("/")
    public String home(){
        return "home";
    }

    @GetMapping("/list")
    public String list(HttpServletRequest request){
        List<Super> superList = superRepository.findAll();
        request.setAttribute("superList", superList);
        return "list";
    }

    @GetMapping("/order")
    public String order(){
        return "order";
    }

    @GetMapping("/saebbing")
    public String saebbing(){
        return "saebbing";
    }

}
