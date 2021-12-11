*** Settings ***
Resource    ../../../pages/home_page_locator.robot

*** Keywords ***
Click New Arrivals go to Product list page
    common_android_keywords.Click Element    ${homePageLocator}[catalog_locator]