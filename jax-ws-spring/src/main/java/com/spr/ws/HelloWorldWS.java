package com.spr.ws;

import javax.jws.WebMethod;
import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.spr.service.HelloWorld;

/**
 * @author a.majidi
 *
 */
@WebService
@Component("helloWs")
public class HelloWorldWS {

	// DI via Spring
	@Autowired
	HelloWorld helloWorldBo;

	@WebMethod(exclude = true)
	public void setHelloWorldBo(HelloWorld helloWorld) {
		this.helloWorldBo = helloWorldBo;
	}

	@WebMethod(operationName = "getHelloWorld")
	public String getHelloWorld() {

		return helloWorldBo.getHelloWorld();

	}

}