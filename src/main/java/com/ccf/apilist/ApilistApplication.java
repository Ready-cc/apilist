package com.ccf.apilist;

import com.ccf.apilist.service.imp.MemberServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ApilistApplication {

	@Autowired
	MemberServiceImp mm;

	public static void main(String[] args) {
		SpringApplication.run(ApilistApplication.class, args);

	}

}
