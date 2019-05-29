package com.spring.secbioda.exception;

import java.io.Serializable;

public class HotelNotFoundException extends Exception implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String message;
	
	public HotelNotFoundException() {
		this ("Hotel is not available !!");
	}
	
	public HotelNotFoundException(String message) {
		this.message=System.currentTimeMillis()+ ":" + message;
	}

	public String getMessage() {
		return message;
	}

	

}
