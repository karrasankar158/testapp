package com.in.mygarage.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MygarageRestController {
	
	@GetMapping("/health")
	public String healthStatus() {
		return "Healthly";
	}

}
