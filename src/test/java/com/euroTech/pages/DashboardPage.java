package com.euroTech.pages;

import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class DashboardPage extends BasePage {


    @FindBy(xpath = "//h2")
    public WebElement userName;

    @FindBy(css = ".breadcrumb>li:nth-of-type(2)")
    public WebElement pageTitleLeftTop;

    @FindBy(xpath = "//nav[@class='header-nav ms-auto']/ul/li[2]")
    public WebElement developersLink;

    @FindBy(xpath = "//ol[@class='breadcrumb']/li[2]")
    public WebElement developerTitle;

    public void verifyDashboard(){
        String actualDeveloperTitleText = developerTitle.getText();
        String expectedTitleText="Developers";
        Assert.assertEquals(expectedTitleText,actualDeveloperTitleText);
    }



    public void verifyUsername(String expectedUsername){
        String actualUsername = userName.getText();
        Assert.assertEquals(expectedUsername, actualUsername);
    }


}
