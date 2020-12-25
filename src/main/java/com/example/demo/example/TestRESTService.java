package com.example.demo.example;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestRESTService {

	@GetMapping("")
	public String test() {
		return "REST Call Ping";
	}

	@GetMapping("/build")
	public String automatedBuild() {
		return "REST Call : Automated Build Success";
	}
}