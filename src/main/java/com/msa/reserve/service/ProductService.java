package com.msa.reserve.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.msa.reserve.dto.ProductDto;
import com.msa.reserve.entity.Product;
import com.msa.reserve.repository.ProductRepository;

import lombok.extern.slf4j.Slf4j;

@Service
@Transactional
@Slf4j
public class ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Transactional(readOnly = true)
	public List<Product> findAllProduct() {
	    return productRepository.findAll();
	}
	
	public void create(ProductDto.SaveReq dto) {
		productRepository.save(dto.toEntity());
	}
	
	public void delete(long productId) {
		productRepository.deleteById(productId);
	}
}
