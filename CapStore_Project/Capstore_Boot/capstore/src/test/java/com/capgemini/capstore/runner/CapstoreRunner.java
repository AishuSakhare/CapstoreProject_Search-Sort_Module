package com.capgemini.capstore.runner;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;
import cucumber.api.CucumberOptions;

@RunWith(Cucumber.class)				
@CucumberOptions(features="Features",glue={"com.capgemini.capstore"},tags = {"@tag1"})
public class CapstoreRunner {

}
