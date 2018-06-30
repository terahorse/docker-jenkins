package com.terahorse.maintenance.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
class HelloController {

    @RequestMapping("/")
    public String test() {
        String message = System.getenv("MESSAGE");
        if (message == null) {
            return "Under Maintenance";
        }
        return message;
    }

}