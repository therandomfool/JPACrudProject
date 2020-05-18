package com.skilldistillery.japanese_knives;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class KnivesAppApplication extends SpringBootServletInitializer {
	  @Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(KnivesAppApplication.class);
	  }

	public static void main(String[] args) {
		SpringApplication.run(KnivesAppApplication.class, args);
	}

}
