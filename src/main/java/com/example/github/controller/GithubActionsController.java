package com.example.github.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.github.model.Actions;


@RestController
@RequestMapping("api/name")
public class GithubActionsController {
	
	@Autowired
	Actions actions;
	
	@GetMapping("/gett")
	public Optional<String> getGreetings() {
		return Optional.of("Hi, Welcome!!");
	}
}
