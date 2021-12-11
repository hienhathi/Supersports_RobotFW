
*** Variables ***
&{commonPageLocator}
...    btn_english_language=android=UiSelector().resourceIdMatches(".*id/splash_item_name$").text("ENGLISH")
...    btn_thai_language=android=UiSelector().resourceIdMatches(".*id/splash_item_name$").text("ภาษาไทย")

*** Keywords ***
Launch SuperSport application, select EN language and log in
    [Documentation]    Launch application,select english language and log in
    ...                - _*email*_         : Email of SuperSport user
    ...                - _*password*_         : Password of SuperSport user
    common_android_keywords.Open SuperSport Application  ${device_info.hien_device}
    common_android_keywords.Select english language
    login_page_keyword.Login with email successfully from start

Launch SuperSport application, select language and click skip button
    [Documentation]    Launch application,select english language and click skip button
    common_android_keywords.Open SuperSport Application  ${device_info.hien_device}
    common_android_keywords.Select english language
    login_page_keyword.Click skip button

Launch SuperSport application, select language
    [Documentation]    Launch application,select english language
    common_android_keywords.Open SuperSport Application  ${device_info.hien_device}
    common_android_keywords.Select english language

Logout and Close SuperSport Application
    [Documentation]    Close current application while Appium session running
    login_page_keyword.Logout
    Run Keyword And Ignore Error    AppiumLibrary.Close Application

Clear wishlist then Logout and Close SuperSport Application
    [Documentation]    Close current application while Appium session running
    wishlist_page_keyword.Clear all items from wishlist
    login_page_keyword.Logout
    Run Keyword And Ignore Error    AppiumLibrary.Close Application

Open Sale item list
    [Documentation]    Open Sale item list by navigation bar
    common_android_keywords.Click Navigation bar
    common_android_keywords.Click Element   ${homePageLocator}[menu_SALEITEMS]

Open product list
    [Documentation]    Open Sale item list by navigation bar
    # common_android_keywords.Click Navigation bar
    common_android_keywords.Click Element   ${homePageLocator}[btn_catalog]

Goto Wishlist page
    [Documentation]    Open Sale item list by navigation bar
    common_android_keywords.Click Element   ${homePageLocator}[btn_wishlist]