package com.capgemini.capstore.stepdefination;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class SearchProduct {

	static {
		System.setProperty("webdriver.chrome.driver", "./src/main/resources/chromedriver.exe");
	}
	WebDriver driver = new ChromeDriver();

	@Given("^Open the chrome and launch the application$")
	public void open_the_chrome_and_launch_the_application() throws Throwable {

	}

	@When("^Click on view product$")
	public void click_on_view_product() throws Throwable {

	}

	@When("^Enter the product name in search field$")
	public void enter_the_product_name_in_search_field() throws Throwable {

	}

	@Then("^Display product$")
	public void display_product() throws Throwable {

	}
}
