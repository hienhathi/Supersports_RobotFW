*** Settings ***
Resource    ../../../pages/login_page_locator.robot

*** Keywords ***
Input customer email
    [Documentation]    Input email to customer email input
    ...                *Arguments:*  
    ...                - _*email*_         : Email of SuperSport user
    [Arguments]    ${email}
    common_android_keywords.Input Text    ${loginPageLocator}[txt_email]    ${email}

Input customer password
    [Documentation]    Input password to customer password input
    ...                *Arguments:*
    ...                - _*password*_      : Password of SuperSport user
    [Arguments]    ${password}
    common_android_keywords.Input Text    ${loginPageLocator}[txt_password]    ${password}

Click login button
    [Documentation]    Click log in button
    common_android_keywords.Click Element    ${loginPageLocator}[btn_login]

Click skip button
    [Documentation]    Click skip button
    common_android_keywords.Click Element    ${loginPageLocator}[btn_skip]  



Input start customer email
    [Documentation]    Input email to customer email input
    ...                *Arguments:*  
    ...                - _*email*_         : Email of SuperSport user
    [Arguments]    ${email}
    common_android_keywords.Input Text    ${loginPageLocator}[txt_email_start]    ${email}

Input start customer password
    [Documentation]    Input password to customer password input
    ...                *Arguments:*
    ...                - _*password*_      : Password of SuperSport user
    [Arguments]    ${password}
    common_android_keywords.Input Text    ${loginPageLocator}[txt_password_start]    ${password}

Click start login button
    [Documentation]    Click log in button
    common_android_keywords.Click Element    ${loginPageLocator}[btn_login_start]

Logout
    [Documentation]    Log out
    common_android_keywords.Click Navigation bar
    common_android_keywords.Click Element   ${homePageLocator}[menu_account]
    common_android_keywords.Click Element   ${loginPageLocator}[btn_logout]

Go to Login page
    [Documentation]    Go to Login page from any page
    common_android_keywords.Click Navigation bar
    common_android_keywords.Click Element   ${homePageLocator}[btn_login]

Login with email successfully from start
    [Documentation]    Input all valid data when log in with email from start
    login_page_keyword.Input start customer email  ${login_data}[email]
    login_page_keyword.Input start customer password  ${login_data}[password]
    login_page_keyword.Click start login button

Login with email successfully
    [Documentation]    Input all valid data when log in with email
    login_page_keyword.Go to Login page
    login_page_keyword.Input customer email  ${login_data}[email]
    login_page_keyword.Input customer password  ${login_data}[password]
    login_page_keyword.Click login button