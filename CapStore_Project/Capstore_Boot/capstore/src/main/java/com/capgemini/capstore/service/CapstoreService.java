package com.capgemini.capstore.service;

import java.util.List;

import com.capgemini.capstore.beans.FeedbackBean;
import com.capgemini.capstore.beans.LoginBean;
import com.capgemini.capstore.beans.OrderBean;
import com.capgemini.capstore.beans.OrderStatusBean;
import com.capgemini.capstore.beans.PermanentMerchantBean;
import com.capgemini.capstore.beans.ProductBean;
import com.capgemini.capstore.beans.TemporaryCustomerBean;
import com.capgemini.capstore.beans.TemporaryMerchantBean;

public interface CapstoreService {

	public List<PermanentMerchantBean> viewVerifiedMerchant();

	public List<LoginBean> viewVerifiedCustomer();

	public List<ProductBean> viewProduct();

	public List<ProductBean> getProductListByBrandName(String brandName);

	public List<String> viewProductByBrandName();

}
