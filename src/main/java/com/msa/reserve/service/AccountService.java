package com.msa.reserve.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.msa.reserve.dto.AccountDto;
import com.msa.reserve.entity.Account;
import com.msa.reserve.entity.Role;
import com.msa.reserve.exception.AccountNotFoundException;
import com.msa.reserve.repository.AccountRepository;

@Service
@Transactional
public class AccountService {

	@Autowired
	private AccountRepository accountRepository;

	public Account create(AccountDto.SignUpReq dto) {
		if(!accountRepository.findByEmail(dto.getEmail()).isEmpty())
			throw new DuplicateKeyException(dto.getEmail());
	    return accountRepository.save(dto.toEntity(Role.ROLE_USER));
	}

	@Transactional(readOnly = true)
	public Account findByEmail(String email) {
	    List<Account> accounts = accountRepository.findByEmail(email);
	    if (accounts.isEmpty())
	        throw new AccountNotFoundException(email);
	    return accounts.get(0);
	}
	
	public Account updateAccount(String email, AccountDto.UpdateAccountReq dto) {
	    Account account = findByEmail(email);
	    account.updateAccount(dto);
	    return account;
	}
}
