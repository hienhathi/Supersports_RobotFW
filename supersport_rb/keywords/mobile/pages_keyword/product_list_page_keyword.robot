*** Settings ***
Resource    ../../../pages/product_list_page_locator.robot

*** Keywords ***
Click the first product in product list
    [Documentation]    Choose the first product
    common_android_keywords.Click Element    ${productListPageLocator}[firt_product_locator]

Click any product in current screen
    [Documentation]    Click any product in current screen by clicking product name
    @{list_products}    common_android_keywords.Get Elements    ${productListPageLocator}[txt_products_name]
    ${len}    Get Length    ${list_products}
    ${rand_index}    Evaluate    random.randint(0,${len})
    common_android_keywords.Click Element    ${list_products}[${rand_index}]