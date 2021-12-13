*** Variables ***
${auth_cookie_path}    ${CURDIR}/../../resources/config/auth_cookie.txt

*** Keywords ***
Create session to server
    [Arguments]    ${alias_name}    ${url}    ${cookie_path}=${auth_cookie_path}
    ${cookies_str}=    Get File    ${cookie_path}
    ${cookies}=  Create Dictionary    doraemonSessionId=${cookies_str}
    ${header}=    BuiltIn.Create Dictionary    content-type=${api_config.header.content_type}    connection=${api_config.header.connection}
    ...    zalora-lang=${api_config.header.zalora_lang}    zalora-country=${api_config.header.zalora_country}
    RequestsLibrary.Create Session    alias=${alias_name}    url=${url}    cookies=${cookies}    headers=${header}