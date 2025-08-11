package com.euroTech.step_definitions;

import com.euroTech.pages.DashboardPage;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Dashboard_StepDefs {
    DashboardPage dashboardPage=new DashboardPage();
    @When("The user clicks on Developers link")
    public void the_user_clicks_on_developers_link() {
      dashboardPage.developersLink.click();

    }
    @Then("The user schould be able to see developers page title")
    public void the_user_schould_be_able_to_see_developers_page_title() {

        dashboardPage.verifyDashboard();
    }



}
