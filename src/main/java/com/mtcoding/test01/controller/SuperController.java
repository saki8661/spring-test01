package com.mtcoding.test01.controller;

import com.mtcoding.test01.model.SuperRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SuperController {

    @Autowired
    private SuperRepository superRepository;

    @GetMapping("/")
    public String home(){

        return "home";
    }
}
