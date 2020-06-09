package com.capgemini.capstore.dao;

import java.util.List;

import com.capgemini.capstore.beans.LoginBean;
import com.capgemini.capstore.beans.PermanentMerchantBean;
import com.capgemini.capstore.beans.ProductBean;

public interface CapstoreDAO {

	public List<PermanentMerchantBean> viewVerifiedMerchant();

	public List<LoginBean> viewVerifiedCustomer();

	public List<ProductBean> viewProduct();

	public List<ProductBean> getProductListByBrandName(String brandName);

	public List<String> viewProductByBrandName();
}
