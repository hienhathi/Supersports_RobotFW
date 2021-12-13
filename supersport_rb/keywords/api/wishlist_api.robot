*** Variables ***
${add_to_wishlist_body}    simpleSku={sku}
${wishlist_alias}    wishlist

*** Keywords ***
Add item to wishlist
    [Arguments]    ${sku}
    Create session to server    ${wishlist_alias}    ${api_end_point.add_to_wishlist}
    ${body}    String.Format String    ${add_to_wishlist_body}    sku=${sku}
    ${response}    POST On Session    alias=${wishlist_alias}    url=${api_end_point.add_to_wishlist}    data=${body}
    
Verify add wishlist response
    [Arguments]     ${response}     ${status_code}
    ${response}  BuiltIn.Convert To String   ${response}
    Should contain    ${response}    ${status_code}

Delete item in wishlist
    [Arguments]    ${sku}
    Create session to server    ${wishlist_alias}    ${api_end_point.delete_wishlist}
    ${end_point}    String.Format String    ${api_end_point.delete_wishlist}    sku=${sku}
    ${response}    DELETE On Session    alias=${wishlist_alias}    url=${end_point}
    Request Should Be Successful    ${response}