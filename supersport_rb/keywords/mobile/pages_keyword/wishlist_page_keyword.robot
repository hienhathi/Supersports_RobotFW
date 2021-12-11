*** Settings ***
Resource    ../../../pages/product_detail_page_locator.robot

*** Keywords ***
Verify product info
    [Documentation]    Get product price in product detail page
    [Arguments]    ${item_info}
    AppiumLibrary.Element Text Should Be     ${wishlistPageLocator}[lb_product_name]   ${item_info}

Get product price
    [Documentation]    Get product price in product detail page
    ${product_price}    common_android_keywords.Get Elements Text    ${wishlistPageLocator}[lb_product_name]
    [Return]    ${product_price}    

Get product name
    [Documentation]    Get product name in product detail page
    ${product_name}    common_android_keywords.Get Text    ${wishlistPageLocator}[lb_product_price]
    [Return]    ${product_name}

Click remove button
    [Documentation]    Click the first remove btn
    common_android_keywords.Click Element  ${wishlistPageLocator}[btn_remove]

Verify item not display in wishlist
    [Documentation]    Verify item not display in wishlist
    [Arguments]    ${item_info}    
    ${item_locator}    String.Format String    ${wishlistPageLocator}[lb_item_name]    item_name=${item_info}  
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${item_locator}    
    ${present}=    Convert To String    ${present}
    Should be equal    False    ${present}
    
Verify number of items in wishlist icon
    [Documentation]    Verify item not display in wishlist
    [Arguments]    ${item_info}    
    ${item_locator}    String.Format String    ${wishlistPageLocator}[lb_item_name]    item_name=${item_info}  
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${item_locator}    
    ${present}=    Convert To String    ${present}
    Should be equal    False    ${present}

Clear all items from wishlist
    @{elements}    common_android_keywords.Get Elements  ${wishlistPageLocator}[btn_remove]
    FOR    ${i}    IN    ${elements}
        Click remove button
    END  
    
Get and add product to wishlist
    common_android_functions.Open product list
    product_list_page_keyword.Click the first product in product list
    ${product_info}    product_detail_page_keyword.Get product info
    product_detail_page_keyword.Add product to Wishlist
    common_android_functions.Goto Wishlist page
    [Return]    ${product_info}

