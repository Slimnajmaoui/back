package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableMongoRepositories(basePackages = "com.example.demo.repository")  // Spécifie où Spring doit chercher les repositories MongoDB
@ComponentScan(basePackages = "com.example.demo.model")  // Spécifie où Spring doit chercher les entités MongoDB
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }
}
