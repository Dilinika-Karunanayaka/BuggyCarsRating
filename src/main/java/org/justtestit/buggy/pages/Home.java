package org.justtestit.buggy.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class Home extends Base {

    @FindBy(linkText = "Register")
    WebElement register;

    public Home(WebDriver driver) {
        super(driver);
    }

    public Register clickRegister() {
        register.click();
        return new Register(driver);
    }
}
