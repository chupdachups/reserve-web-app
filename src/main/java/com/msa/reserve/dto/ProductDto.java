package com.msa.reserve.dto;

import com.msa.reserve.entity.Product;

import lombok.Getter;

public class ProductDto {
	
	@Getter
	public static class Res {
		private Long productId;
		private String productName;
		private String address;
		private String detailAddress;
		private Long price;
		
		public Res(Product product) {
			this.productId = product.getId();
			this.productName = product.getProductName();
			this.address = product.getAddress();
			this.detailAddress = product.getDetailAddress();
			this.price = product.getPrice();
		}
	}
}
