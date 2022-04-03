package com.msa.reserve.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.msa.reserve.dto.AccountDto;
import com.msa.reserve.entity.Account;
import com.msa.reserve.exception.AccountNotFoundException;
import com.msa.reserve.exception.WrongPasswordException;
import com.msa.reserve.repository.LoginRepository;

@Service
@Transactional
public class LoginService {
	
	@Autowired
	private LoginRepository loginRepository;
	
	@Transactional(readOnly = true)
	public Account login(AccountDto.LoginReq dto) {

		List<Account> accounts = loginRepository.findByEmail(dto.getEmail());
		if(accounts.isEmpty())
			throw new AccountNotFoundException(dto.getEmail());
		
		final Account account = accounts.get(0);
	    if (!(dto.getPassword().equals(account.getPassword())))
	    	throw new WrongPasswordException(dto.getEmail());
	    
	    return account;
	}

}
