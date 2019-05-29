package com.spring.secbioda.exception;

import java.io.PrintWriter;
import java.io.StringWriter;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {
	
	// 404 FOR PAGE
	@ExceptionHandler (NoHandlerFoundException.class)
	public ModelAndView handlerNoHandlerFoundException() {
		
		ModelAndView mv = new ModelAndView ("error");
		
		mv.addObject("errorTitle","The page is not available!");
		
		mv.addObject("errorDescription","The page you are looking for is not available now!");
		
		mv.addObject("title","404 Error Page");
		
		return mv;
	}
	
	//404 FOR HOTEL
	@ExceptionHandler (HotelNotFoundException.class)
	public ModelAndView handlerHotelNotFoundException() {
		
		ModelAndView mv = new ModelAndView ("error");
		
		mv.addObject("errorTitle","The hotel is not available!");
		
		mv.addObject("errorDescription","The hotel you are looking for is not available right now!");
		
		mv.addObject("title","Hotel Unavailable");
		
		return mv;
	}
	
	// FOR GENERALIZE
		@ExceptionHandler (Exception.class)
		public ModelAndView handlerException(Exception ex) {
			
			ModelAndView mv = new ModelAndView ("error");
			
			mv.addObject("errorTitle","Contact Your Administrator!!");
			
			/*only for debugging your application*/
			
			StringWriter sw = new StringWriter();
			PrintWriter pw = new PrintWriter(sw);
			ex.printStackTrace(pw);
			
			mv.addObject("errorDescription",sw.toString());
			
			mv.addObject("title","Error");
			
			return mv;
		}

}
