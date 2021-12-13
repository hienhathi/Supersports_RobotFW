*** Setting ***
Resource    ${CURDIR}/../../../resources/imports/mobile_import.robot

Test Setup    common_android_functions.Launch SuperSport application, select EN language and log in
Test Teardown    Run Keywords    common_android_functions.Logout and Close SuperSport Application

Force Tags    wishlist_features    wishlist_remove_test

*** Test Cases ***

Verify user can remove item from wishlist
    [Tags]    WL_Remove_TC01
    ${product_info}     wishlist_page_keyword.Get and add product to wishlist
    common_android_functions.Goto Wishlist page    
    wishlist_page_keyword.Click remove button
    wishlist_page_keyword.Verify item not display in wishlist   ${product_info}