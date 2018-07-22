package com.speech.text.speechtotext;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.speech.text.speechtotext")
public class SpeechtotextApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpeechtotextApplication.class, args);
	}
}
