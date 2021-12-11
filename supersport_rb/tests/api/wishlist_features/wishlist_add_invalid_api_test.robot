*** Setting ***
Resource    ${CURDIR}/../../../resources/imports/mobile_import.robot

Test Setup    common_api.Get sessionId
Test Template    Add item to wishlist valid cases
Library    DataDriver    file=../../../resources/api_test_data/add_wishlist_invalid.xlsx    sheet_name=sheet1    encoding=UTF-8

*** Keywords ***
Add item to wishlist valid cases
    [Arguments]    ${sizeSystem}    ${simpleSku}    ${wlId}    ${message}
    ${response}     wishlist_api.Add item to wishlist   ${sizeSystem}    ${simpleSku}    ${wlId}
    wishlist_api.Verify add wishlist response  ${response}    ${message}
    wishlist_api.Remove item from wishlist successfully    ${simpleSku}
    
*** Test Cases ***
Verify add tem to wishlist function    ${sizeSystem}    ${simpleSku}    ${wlId}    ${message}
