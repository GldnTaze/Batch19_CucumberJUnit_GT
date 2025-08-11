package com.euroTech.step_definitions;

import com.euroTech.pages.DashboardPage;
import com.euroTech.pages.LoginPage;
import com.euroTech.utilites.ConfigurationReader;
import com.euroTech.utilites.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

public class Lohin_StepDefs {
    LoginPage loginPage=new LoginPage();
    DashboardPage dashboardPage = new DashboardPage();

    @Given("The user is on the login page")
    public void the_user_is_on_the_login_page() {
        Driver.get().get(ConfigurationReader.get("url"));


    }
    @When("The user enters gulden's credentials")
    public void the_user_enters_gulden_s_credentials() {
       /*  Driver.get().findElement(By.id("email")).sendKeys(ConfigurationReader.get("email"));
        Driver.get().findElement(By.id("yourPassword")).sendKeys(ConfigurationReader.get("password"));
        Driver.get().findElement(By.xpath("//button[text()='Login']")).click();
       */
        loginPage.login();

    }
    @Then("The user should be able to see dashboard page")
    public void the_user_should_be_able_to_see_dashboard_page() {
           /* String actualUsername = dashboardPage.userName.getText();
        String expectedUsername = ConfigurationReader.get("userName");
        Assert.assertEquals("İsimler aynı olmalıdır",expectedUsername, actualUsername);
        */
        dashboardPage.verifyUsername(ConfigurationReader.get("userName"));
    }



    @When("The user enters Leroy's credentials")
    public void the_user_enters_leroy_s_credentials() {
        loginPage.login(ConfigurationReader.get("email_leroy"),ConfigurationReader.get("password_leroy"));

    }
    @Then("The user should be able to see Leroy's name on the dashboard page")
    public void the_user_should_be_able_to_see_leroy_s_name_on_the_dashboard_page() {
        dashboardPage.verifyUsername(ConfigurationReader.get("userName_leroy"));

    }
    @When("The user enters mike's credentials")
    public void the_user_enters_mike_s_credentials() {
      loginPage.login(ConfigurationReader.get("email_mike"),ConfigurationReader.get("password_mike"));
    }
    @Then("The user should be able to see mike's name on the dashboard page")
    public void the_user_should_be_able_to_see_mike_s_name_on_the_dashboard_page() {
        dashboardPage.verifyUsername(ConfigurationReader.get("userName_mike"));
    }

    @When("The user enters Rosa's credentials")
    public void the_user_enters_rosa_s_credentials() {
        loginPage.login(ConfigurationReader.get("email_rosa"),ConfigurationReader.get("password_rosa"));

    }
    @Then("The user should be able to see Rosa's name on the dashboard page")
    public void the_user_should_be_able_to_see_rosa_s_name_on_the_dashboard_page() {
      dashboardPage.verifyUsername(ConfigurationReader.get("userName_rosa"));
    }


    @When("The user enters Mansimmo's credentials")
    public void the_user_enters_mansimmo_s_credentials() {
        loginPage.login(ConfigurationReader.get("email_mansimmo"),ConfigurationReader.get("password_mansimmo"));
    }
    @Then("The user should be able to see Mansimmo's name on the dashboard page")
    public void the_user_should_be_able_to_see_mansimmo_s_name_on_the_dashboard_page() {
        dashboardPage.verifyUsername(ConfigurationReader.get("userName_mansimmo"));

    }


    @When("The user logins with {string} and {string}")
    public void the_user_logins_with_and(String email, String password) {

    }
    @Then("The user should be able to see {string} on dashboard page")
    public void the_user_should_be_able_to_see_on_dashboard_page(String username) {

    }







}
