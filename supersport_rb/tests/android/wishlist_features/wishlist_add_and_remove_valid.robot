*** Setting ***
Resource    ${CURDIR}/../../../resources/imports/mobile_import.robot

Test Template    Template - Add item to wishlist valid cases
Library    DataDriver    file=../../../resources/api_test_data/wishlist.xlsx    sheet_name=valid_data    encoding=UTF-8

Force Tags    wishlist_features    wishlist_add_and_remove_valid

*** Keywords ***
Template - Add item to wishlist valid cases
    [Arguments]    ${sku}
    ${response}     wishlist_api.Add item to wishlist   ${sku}
    Request Should Be Successful    ${response}
    wishlist_api.Delete item in wishlist    ${sku}
    
*** Test Cases ***
Verify add valid item to wishlist function    ${sku}