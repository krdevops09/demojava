package com.example;

import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.web.bind.annotation.*;

@RestController
@SpringBootApplication
public class Application {

    @GetMapping("/")
    public String home() {
        return "Hello from demojava!!!";
    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}

