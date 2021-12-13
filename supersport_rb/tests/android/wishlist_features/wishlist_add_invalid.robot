*** Setting ***
Resource    ${CURDIR}/../../../resources/imports/mobile_import.robot

Test Template    Template - Add invalid item in wishlist
Library    DataDriver    file=../../../resources/api_test_data/wishlist.xlsx    sheet_name=invalid_data    encoding=UTF-8

Force Tags    wishlist_features    wishlist_add_invalid

*** Keywords ***
Template - Add invalid item in wishlist
    [Arguments]    ${sku}    ${status_code}
    ${response}     Run Keyword And Ignore Error    wishlist_api.Add item to wishlist   ${sku}
    wishlist_api.Verify add wishlist response    ${response}    ${status_code}
    
*** Test Cases ***
Verify add invalid item to wishlist function    ${sku}    ${status_code}