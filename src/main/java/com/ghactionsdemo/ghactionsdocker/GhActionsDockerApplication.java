package com.ghactionsdemo.ghactionsdocker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class GhActionsDockerApplication {
	public static void main(String[] args) {
		SpringApplication.run(GhActionsDockerApplication.class, args);
	}
}
