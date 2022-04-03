package com.msa.reserve.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.msa.reserve.entity.Account;

public interface AccountRepository extends JpaRepository<Account, String> {
	
	List<Account> findByEmail(String email);

}
