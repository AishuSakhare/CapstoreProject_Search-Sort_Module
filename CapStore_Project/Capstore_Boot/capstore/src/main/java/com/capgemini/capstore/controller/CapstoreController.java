package com.capgemini.capstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.capgemini.capstore.beans.CapstoreResponseBean;
import com.capgemini.capstore.beans.LoginBean;
import com.capgemini.capstore.beans.PermanentMerchantBean;
import com.capgemini.capstore.beans.ProductBean;
import com.capgemini.capstore.beans.TemporaryMerchantBean;
import com.capgemini.capstore.service.CapstoreService;

@RestController
//@CrossOrigin(origins = "*", allowedHeaders = "*")
@CrossOrigin(origins = "http://localhost:4200")
public class CapstoreController {

	@Autowired
	private CapstoreService service;

	@GetMapping("/viewVerifiedMerchant")
	public CapstoreResponseBean viewVerifiedMerchant() {
		CapstoreResponseBean response = new CapstoreResponseBean();
		List<PermanentMerchantBean> verifiedMerchantList = service.viewVerifiedMerchant();
		if (verifiedMerchantList != null) {
			response.setStatusCode(201);
			response.setMessage("Success");
			response.setDescription("Verified Merchant list found...");
			response.setPermanentMerchantList(verifiedMerchantList);
		} else {
			response.setStatusCode(401);
			response.setMessage("Failed");
			response.setDescription("Verified merchant list not found..");
		}
		return response;
	}

	@GetMapping("/viewVerifiedCustomer")
	public CapstoreResponseBean viewVerifiedCustomer() {
		CapstoreResponseBean response = new CapstoreResponseBean();
		List<LoginBean> verifiedCustomerList = service.viewVerifiedCustomer();
		if (verifiedCustomerList != null) {
			response.setStatusCode(201);
			response.setMessage("Success");
			response.setDescription("Verified customer list found...");
			response.setLoginList(verifiedCustomerList);
		} else {
			response.setStatusCode(401);
			response.setMessage("Failed");
			response.setDescription("Verified customer list not found..");
		}
		return response;
	}

	@GetMapping("/viewProduct")
	public CapstoreResponseBean viewProduct() {
		CapstoreResponseBean response = new CapstoreResponseBean();
		List<ProductBean> productList = service.viewProduct();
		if (productList != null) {
			response.setStatusCode(201);
			response.setMessage("Success");
			response.setDescription("Product list found...");
			response.setProductList(productList);
		} else {
			response.setStatusCode(401);
			response.setMessage("Failed");
			response.setDescription("Product list not found");
		}
		return response;
	}

	@GetMapping("/viewProductByBrandName")
	public CapstoreResponseBean viewProductByBrandName() {
		CapstoreResponseBean response = new CapstoreResponseBean();
		List<String> productBrandList = service.viewProductByBrandName();
		if (productBrandList != null) {
			response.setStatusCode(201);
			response.setMessage("Success");
			response.setDescription("productBrandList  found...");
			response.setProductBrandList(productBrandList);
		} else {
			response.setStatusCode(401);
			response.setMessage("Failed");
			response.setDescription("productBrandList  not found");
		}
		return response;
	}

	@PostMapping(path = "/getProductListByBrandName")
	public CapstoreResponseBean getProductListByBrandName(@RequestBody String brandName) {
		CapstoreResponseBean response = new CapstoreResponseBean();

		List<ProductBean> productList = service.getProductListByBrandName(brandName);
		if (productList != null) {
			response.setStatusCode(201);
			response.setMessage("Success");
			response.setDescription("Product list found...");
			response.setProductList(productList);
		} else {
			response.setStatusCode(401);
			response.setMessage("Failed");
			response.setDescription("Product list not found");
		}
		return response;
	}

}
