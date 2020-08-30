package com.lf2a.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {
    @GetMapping("/")
    public String publicPage() {
        return "public";
    }

    @GetMapping("/employees")
    public String employees() {
        return "employees";
    }

    @GetMapping("/leaders")
    public String leaders() {
        return "leaders";
    }

    @GetMapping("/systems")
    public String systems() {
        return "systems";
    }
}
