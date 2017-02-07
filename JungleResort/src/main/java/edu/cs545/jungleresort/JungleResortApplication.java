package edu.cs545.jungleresort;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "edu.cs545.jungleresort")
public class JungleResortApplication {
	
	

	public static void main(String[] args) {
		SpringApplication.run(JungleResortApplication.class, args);
	}
}
