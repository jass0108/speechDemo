package com.speech.text.speechtotext.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.speech.text.speechtotext.model.Register;

@Controller
public class RegisterController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String registerPage(ModelMap model) {
		model.addAttribute("register", new Register());
		return "register";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String addTodo(ModelMap model, @Valid Register register, BindingResult result) {

		if (result.hasErrors()) {
			return "register";
		}
		register.setUname(register.getUname().replaceAll(" ", ""));
		model.addAttribute("success", register);
		return "success";
	}

	@RequestMapping(value = "/registerNew", method = RequestMethod.GET)
	public String registerNew(ModelMap model) {
		model.addAttribute("register", new Register());
		return "register";
	}

}
