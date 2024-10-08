package com.in.mygarage.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class MygarageRestController {   
	
	@GetMapping("/health")
	public String healthStatus() {
		log.info("mygarage application up and running");
		return "Healthly";
	}
	
	@GetMapping("/v1/health")
	public String healthStatus1() {
		log.info("mygarage application up and running");
		return "Healthly";
	}

}
