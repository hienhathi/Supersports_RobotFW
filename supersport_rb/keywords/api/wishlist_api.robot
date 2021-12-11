*** Variables ***
${api_end_point}    ${API_common}[api-end-point]
&{Wishlist_body}
...    add_wishlist_body=selectedSizeSystem={sizeSystem}&simpleSku={sku}&wishListId={wlId}


*** Keywords ***

Add item to wishlist
    [Arguments]     ${sizeSystem}     ${simpleSku}     ${wlId}    
    &{header}=  Create Dictionary
    ...    Content-Type=${API_common}[content-type]
    ...    cookie=${cookies}
    ...    zalora-lang=${API_common}[zalora-lang]
    ${body}=     String.Format String   ${Wishlist_body}[add_wishlist_body]  sizeSystem=${sizeSystem}
    ${body}=     String.Format String   ${Wishlist_body}[add_wishlist_body]  sku=${simpleSku}
    ${body}=     String.Format String   ${Wishlist_body}[add_wishlist_body]  wlId=${wlId}
    &{response}=   REST.Post    ${api_end_point}/v1/wishLists/items?setLang=en&d=a
    ...   headers=${header}
    ...   body=${body}
    ${response}=    Rest.Output    response body
    [Return]    ${response}

Verify add wishlist response
    [Arguments]     ${response}     ${message}
    ${response}  BuiltIn.Convert To String   ${response}
    Should contain    ${response}   ${message}

Verify remove item from wishlist successfully
    [Arguments]     ${simpleSku}
    &{header}=  Create Dictionary
    ...    Content-Type=${API_common}[content-type]
    ...    cookie=${cookies}
    ...    zalora-lang=${API_common}[zalora-lang]
    ${end_point}=   ${api_end_point}/v1/wishLists/items?simpleSku=${simpleSku}&wishListId=&setLang=en&d=a
    ${response}=    REST.Delete    endpoint=${end_point}    headers=${header}    
    REST.Integer        response status    200
    ${response}=    Rest.Output    response body
    [Return]    ${response}

Remove item from wishlist
    [Arguments]     ${simpleSku}
    &{header}=  Create Dictionary
    ...    Content-Type=${API_common}[content-type]
    ...    cookie=${cookies}
    ...    zalora-lang=${API_common}[zalora-lang]
    ${end_point}=   ${api_end_point}/v1/wishLists/items?simpleSku=${simpleSku}&wishListId=&setLang=en&d=a
    ${response}=    REST.Delete    endpoint=${end_point}    headers=${header}
    ${response}=    Rest.Output    response body
    [Return]    ${response}
