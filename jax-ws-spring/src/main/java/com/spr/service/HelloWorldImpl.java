/**
 * 
 */
package com.spr.service;

import org.springframework.stereotype.Component;

/**
 * @author a.majidi
 *
 */
@Component
public class HelloWorldImpl implements HelloWorld{
	
	public String getHelloWorld(){
		return "JAX-WS + Spring!";
	}

}
