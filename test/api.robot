*** Settings ***

Resource    ../resource/api/api.resource

*** Test Cases ***
Consultar lista de Autores GET api/v1/Authors
    Requisitar todos os autores
    Conferir o status code 200
    Conferir o reason OK
    Conferir se retorna uma lista com 590 autores
    