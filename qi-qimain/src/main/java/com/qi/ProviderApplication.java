package com.qi;

import com.qi.project.test.controller.user;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import tk.mybatis.spring.annotation.MapperScan;

/**
 * @author xiaojing
 */
//@EnableDiscoveryClient
@SpringBootApplication
@MapperScan({"com.qi.project.baokao.mapper","com.qi.project.fs.mapper","com.qi.project.system.mapper"})

public class ProviderApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProviderApplication.class, args);
	}


}
