package org.justtestit.buggy.pages;

import lombok.extern.log4j.Log4j2;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.concurrent.TimeUnit;

@Log4j2
public class Base {

    protected final WebDriver driver;
    protected final WebDriverWait driverWait;

    public Base(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(new AjaxElementLocatorFactory(this.driver, 15), this);
        driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
        int timeoutInSeconds = 30;
        driverWait = new WebDriverWait(this.driver, timeoutInSeconds);
    }

    public WebElement waitUntilVisibilityOf(WebElement element) {
        log.debug("Wait until element to be visible...");
        return (WebElement) driverWait.until(ExpectedConditions.visibilityOf(element));
    }

    public String getTitle() {
        log.info("Returning Title...");
        String title = driver.getTitle();
        int counter = 0;
        while (title.isEmpty() && counter++ < 10) {
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                log.error(e);
            }
            title = driver.getTitle();
        }
        return title;
    }

    public String getPageSource() {
        log.info("Returning Page Source...");
        return driver.getPageSource();
    }

    public void mouseover(WebElement webElement) {
        Actions action = new Actions(driver);
        action.moveToElement(webElement).build().perform();
    }

}