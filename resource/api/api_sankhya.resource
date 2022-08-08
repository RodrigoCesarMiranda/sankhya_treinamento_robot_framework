*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${payload}        ${EMPTY}
&{params}
${url_Base}        https://atacadistriborclhd411.qa.sankhya.com.br/
&{path_params}     geral=mge/service.sbr?    com=mgecom/service.sbr?
${end_point}
${response}

*** Keywords ***
Dado que tem as configurações da requisição
    ${payload_string}    Get File    ./resource/api/login.json
    ${params}    Create Dictionary   serviceName=MobileLoginSP.login
    ...                              outputType=json
    ${end_point}    Catenate    ${url_Base}${path_params.geral}
    Set Test Variable    ${payload}    ${payload_string}
    Set Test Variable    &{params}
    Set Test Variable    ${end_point}

Quando envio esta requisicao de Login
    ${response}    POST    url=${end_point}    params=&{params}    data=${payload}
    Set Test Variable    ${response}

Entao valido o atributo status ${status}
    ${response_status}    Set Variable    ${response.json()}[status]
    Should Be Equal As Integers     ${status}    ${response_status}

Adcionar parametro jsseion
    Set To Dictionary    ${params}    mgeSession=${response.json()}[responseBody][jsessionid][$]

Dado que eu estou logado
    Dado que tem as configurações da requisição
    Quando envio esta requisicao de Login
    Adcionar parametro jsseion
Quando crio um pedido
    ${payload_pedido}    Get File    ./resource/api/criar_pedido.json
    ${end_point}    Catenate    ${url_Base}${path_params.com}
    ${response_pedido}    POST    url=${end_point}    params=&{params}    data=${payload_pedido}
    Set Test Variable    ${payload_pedido}

Então valido meu pedido
    ${status_pedido}    Set Variable    ${response.json()}[status]
    Should Be Equal As Integers    1    ${status_pedido}
