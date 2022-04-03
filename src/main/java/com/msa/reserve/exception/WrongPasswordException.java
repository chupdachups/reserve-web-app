package com.msa.reserve.exception;

import lombok.Getter;

@Getter
public class WrongPasswordException extends RuntimeException{
	
	private String email;

	public WrongPasswordException(String email) {
		this.email = email;
	}
}
