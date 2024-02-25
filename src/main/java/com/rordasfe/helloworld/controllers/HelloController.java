package com.rordasfe.helloworld.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@GetMapping("/welcome")
	public ResponseEntity<String> saludoBienvenida() {
		return ResponseEntity.ok("Hello Amigo");
	}
}
