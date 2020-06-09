package com.capgemini.capstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capgemini.capstore.beans.FeedbackBean;
import com.capgemini.capstore.beans.LoginBean;
import com.capgemini.capstore.beans.OrderBean;
import com.capgemini.capstore.beans.OrderStatusBean;
import com.capgemini.capstore.beans.PermanentMerchantBean;
import com.capgemini.capstore.beans.ProductBean;
import com.capgemini.capstore.beans.TemporaryCustomerBean;
import com.capgemini.capstore.beans.TemporaryMerchantBean;
import com.capgemini.capstore.customexception.CapstoreException;
import com.capgemini.capstore.dao.CapstoreDAO;

@Service
public class CapstoreServiceImpl implements CapstoreService {

	@Autowired
	private CapstoreDAO dao;

	
	@Override
	public List<PermanentMerchantBean> viewVerifiedMerchant() {
		try {
			return dao.viewVerifiedMerchant();
		} catch (CapstoreException e) {
			System.err.println(e.getMessage());
		}
		return null;
	}

	@Override
	public List<LoginBean> viewVerifiedCustomer() {
		try {
			return dao.viewVerifiedCustomer();
		} catch (CapstoreException e) {
			System.err.println(e.getMessage());
		}
		return null;
	}

	@Override
	public List<ProductBean> viewProduct() {
		try {
			return dao.viewProduct();
		} catch (CapstoreException e) {
			System.err.println(e.getMessage());
		}
		return null;
	}

	@Override
	public List<String> viewProductByBrandName() {
		try {
			return dao.viewProductByBrandName();
		} catch (CapstoreException e) {
			System.err.println(e.getMessage());
		}
		return null;
	}

	@Override
	public List<ProductBean> getProductListByBrandName(String brandName) {
		try {
			return dao.getProductListByBrandName(brandName);
		} catch (CapstoreException e) {
			System.err.println(e.getMessage());
		}
		return null;
	}
}