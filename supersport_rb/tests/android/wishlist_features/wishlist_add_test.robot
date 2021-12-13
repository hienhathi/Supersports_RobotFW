*** Setting ***
Resource    ${CURDIR}/../../../resources/imports/mobile_import.robot

Test Setup    common_android_functions.Launch SuperSport application, select language
Test Teardown    Run Keywords    common_android_functions.Clear wishlist then Logout and Close SuperSport Application

Force Tags    wishlist_features    wishlist_add_test

*** Test Cases ***

Verify user as guest can add item to Wishlist successfully then wishlist update correctly after login
    [Tags]    WL_Add_TC01	
    login_page_keyword.Click skip button
    common_android_functions.Open product list
    product_list_page_keyword.Click the first product in product list
    ${product_info}    product_detail_page_keyword.Get product info
    product_detail_page_keyword.Add product to Wishlist
    common_android_functions.Goto Wishlist page
    wishlist_page_keyword.Verify product info  ${product_info}
    login_page_keyword.Login with email successfully
    common_android_functions.Goto Wishlist page
    wishlist_page_keyword.Verify product info  ${product_info}

Verify user as member can add item to Wishlist successfully
    [Tags]    WL_Add_TC02
    login_page_keyword.Login with email successfully from start
    common_android_functions.Open product list
    product_list_page_keyword.Click the first product in product list
    ${product_info}    product_detail_page_keyword.Get product info
    product_detail_page_keyword.Add product to Wishlist
    common_android_functions.Goto Wishlist page
    wishlist_page_keyword.Verify product info  ${product_info}