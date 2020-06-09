package com.capgemini.capstore.customexception;

@SuppressWarnings("serial")
public class CapstoreException extends RuntimeException {
	String message;

	public CapstoreException(String message) {
		super(message);
		
	}
}
