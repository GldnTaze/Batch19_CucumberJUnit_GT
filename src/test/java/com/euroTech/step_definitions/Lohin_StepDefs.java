package com.euroTech.step_definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Lohin_StepDefs {

    @Given("The user is on the login page")
    public void the_user_is_on_the_login_page() {
        System.out.println("The user navigates to the login page");

    }
    @When("The user enters guldens credentials")
    public void the_user_enters_guldens_credentials() {
        System.out.println("The user enters");
    }
    @Then("The user sholuld be able to see dashbord page")
    public void the_user_sholuld_be_able_to_see_dashbord_page() {

    }

    @When("The user enters Rosa`s credentials")
    public void the_user_enters_rosa_s_credentials() {

    }

    @When("The user enters mike`s credentials")
    public void the_user_enters_mike_s_credentials() {

    }
}
