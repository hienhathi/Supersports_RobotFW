*** Variables ***
${api_end_point}    ${API_common}[api-end-point]   
${resource_dir}     ${CURDIR}/../resources/api_data

*** Keywords ***

Get sessionId
    &{headers}=    Create Dictionary    x-newrelic-id=${API_common}[x-newrelic-id]    Content-Type=${API_common}[content-type]     zalora-lang=en
    ${request_body}=    Get File    ${CURDIR}/../../resources/login_body.json
    ${end_point}=   Set Variable    ${api_end_point}/v1/customers/login?setLang=en&d=a
    ${response}=    REST.Post    endpoint=${end_point}     headers=${headers}   body=${login_body}
    BuiltIn.Log    ${response}
    BuiltIn.Log    ${login_body} 
    ${cookies}=     ${response}
    Set Suite Variable  ${cookies}    ${cookies}

Get sessionId1
    ${end_point}=   Set Variable    ${api_end_point}/v1/customers/login?setLang=en&d=a
    ${request_body}=    JSONLibrary.Load JSON From File    ${CURDIR}/../../resources/login_body.json
    ${body}=    Evaluate    json.dumps($request_body)    json
    ${header}=    Create Dictionary    Accept=application/json    Content-Type=application/json     zalora-lang=en
    ${response}=        REST.Post    endpoint=${end_point}    body=${body}    headers=${header}
    BuiltIn.Log    ${response}
    BuiltIn.Log    ${login_body} 
    ${cookies}=     ${response}
    Set Suite Variable  ${cookies}    ${cookies}