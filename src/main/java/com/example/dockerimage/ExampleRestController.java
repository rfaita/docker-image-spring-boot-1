package com.example.dockerimage;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ExampleRestController {

    @GetMapping("/hello")
    public String hello() {
        return new String("Hello World Docker!");
    }
}
