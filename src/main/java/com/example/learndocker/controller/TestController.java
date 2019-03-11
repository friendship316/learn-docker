package com.example.learndocker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @create: 2019-03-11 16:20
 **/
@Controller
@RequestMapping("/")
public class TestController {

    @RequestMapping(value = "")
    public String home() {
        System.out.println("it's index！");
        return "home/index";
    }
}
