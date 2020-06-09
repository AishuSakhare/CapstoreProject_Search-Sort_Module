package com.capgemini.capstore.beans;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_DEFAULT)
public class CapstoreResponseBean {
	
	private int statusCode;
	private String message;
	private String description;
	private LoginBean loginBean;
	private List<LoginBean> loginList;
	private PermanentMerchantBean permanentMerchantBean;
	private List<PermanentMerchantBean> permanentMerchantList;
	private TemporaryMerchantBean temporaryMerchantBean;
	private List<TemporaryMerchantBean> temporaryMerchantList;
	private TemporaryCustomerBean temporaryCustomerBean;
	private List<TemporaryCustomerBean> temporaryCustomerList;
	private FeedbackBean feedbackBean;
	private List<FeedbackBean> feedbackList;
	private ProductBean productBean;
	private List<ProductBean> productList;
	private List<String> productBrandList;


	private OrderStatusBean orderStatusBean;
	private List<OrderStatusBean> orderStatusList;
	private OrderBean orderBean;
	private List<OrderBean> orderList;

	public int getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public LoginBean getLoginBean() {
		return loginBean;
	}

	public void setLoginBean(LoginBean loginBean) {
		this.loginBean = loginBean;
	}

	public List<LoginBean> getLoginList() {
		return loginList;
	}

	public void setLoginList(List<LoginBean> loginList) {
		this.loginList = loginList;
	}

	public PermanentMerchantBean getPermanentMerchantBean() {
		return permanentMerchantBean;
	}

	public void setPermanentMerchantBean(PermanentMerchantBean permanentMerchantBean) {
		this.permanentMerchantBean = permanentMerchantBean;
	}

	public List<PermanentMerchantBean> getPermanentMerchantList() {
		return permanentMerchantList;
	}

	public void setPermanentMerchantList(List<PermanentMerchantBean> permanentMerchantList) {
		this.permanentMerchantList = permanentMerchantList;
	}

	public TemporaryMerchantBean getTemporaryMerchantBean() {
		return temporaryMerchantBean;
	}

	public void setTemporaryMerchantBean(TemporaryMerchantBean temporaryMerchantBean) {
		this.temporaryMerchantBean = temporaryMerchantBean;
	}

	public List<TemporaryMerchantBean> getTemporaryMerchantList() {
		return temporaryMerchantList;
	}

	public void setTemporaryMerchantList(List<TemporaryMerchantBean> temporaryMerchantList) {
		this.temporaryMerchantList = temporaryMerchantList;
	}

	public TemporaryCustomerBean getTemporaryCustomerBean() {
		return temporaryCustomerBean;
	}

	public void setTemporaryCustomerBean(TemporaryCustomerBean temporaryCustomerBean) {
		this.temporaryCustomerBean = temporaryCustomerBean;
	}

	public List<TemporaryCustomerBean> getTemporaryCustomerList() {
		return temporaryCustomerList;
	}

	public void setTemporaryCustomerList(List<TemporaryCustomerBean> temporaryCustomerList) {
		this.temporaryCustomerList = temporaryCustomerList;
	}

	public FeedbackBean getFeedbackBean() {
		return feedbackBean;
	}

	public void setFeedbackBean(FeedbackBean feedbackBean) {
		this.feedbackBean = feedbackBean;
	}

	public List<FeedbackBean> getFeedbackList() {
		return feedbackList;
	}

	public void setFeedbackList(List<FeedbackBean> feedbackList) {
		this.feedbackList = feedbackList;
	}

	public ProductBean getProductBean() {
		return productBean;
	}

	public void setProductBean(ProductBean productBean) {
		this.productBean = productBean;
	}

	public List<ProductBean> getProductList() {
		return productList;
	}

	public void setProductList(List<ProductBean> productList) {
		this.productList = productList;
	}
	public List<String> getProductBrandList() {
		return productBrandList;
	}

	public void setProductBrandList(List<String> productBrandList) {
		this.productBrandList = productBrandList;
	}
	public OrderStatusBean getOrderStatusBean() {
		return orderStatusBean;
	}

	public void setOrderStatusBean(OrderStatusBean orderStatusBean) {
		this.orderStatusBean = orderStatusBean;
	}

	public List<OrderStatusBean> getOrderStatusList() {
		return orderStatusList;
	}

	public void setOrderStatusList(List<OrderStatusBean> orderStatusList) {
		this.orderStatusList = orderStatusList;
	}

	public OrderBean getOrderBean() {
		return orderBean;
	}

	public void setOrderBean(OrderBean orderBean) {
		this.orderBean = orderBean;
	}

	public List<OrderBean> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<OrderBean> orderList) {
		this.orderList = orderList;
	}

	
}
