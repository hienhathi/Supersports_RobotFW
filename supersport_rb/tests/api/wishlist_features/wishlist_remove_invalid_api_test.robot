*** Setting ***
Resource    ${CURDIR}/../../../resources/imports/mobile_import.robot

Test Setup    common_api.Get sessionId

    
*** Test Cases ***
Verify remove item from wishlist successfully
    ${response}     wishlist_api.Add item to wishlist   ${wishlist_item1}[selectedSizeSystem]    ${wishlist_item1}[simpleSku]    ${wishlist_item1}[wishListId]
    wishlist_api.Verify remove item from wishlist successfully  ${wishlist_item1}[simpleSku]