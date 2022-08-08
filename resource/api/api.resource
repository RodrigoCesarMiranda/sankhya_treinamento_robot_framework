*** Settings ***
Library    RequestsLibrary

*** Variables ***

${url_base}    https://fakerestapi.azurewebsites.net/
${path_params}    api/v1/Authors
${response}    ${EMPTY}

*** Keywords ***
Requisitar todos os autores
    ${end_point}    Catenate    ${url_base}${path_params}
    ${response}    GET    ${end_point}
    Set Test Variable    ${response}

Conferir o status code ${code}
    Should Be Equal As Integers    200    ${response.status_code} 
    Log    ${response} 

Conferir o reason ${status}
    Should Be Equal    ${status}    ${response.reason}

Conferir se retorna uma lista com ${num_item} autores
    ${dados_livro}    Set Variable    ${response.json()}[379]
    Log    ${dados_livro}