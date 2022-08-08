*** Settings ***

Library    RequestsLibrary
Library    Collections
Library    OperatingSystem

*** Variables ***

${url_base}        https://gorest.co.in
${path_params}    /public/v2/users/
${payload}        ${EMPTY}
&{params}
${end_point}
${response}


*** Keywords ***
Dado que tenho os dados para efetuar o servico list_all_users
    ${end_point}    Catenate    ${url_base}${path_params}
    ${response}    GET    ${end_point}
    Set Test Variable    ${response}

Quando executo servico list_all_users
    
