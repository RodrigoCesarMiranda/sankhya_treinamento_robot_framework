*** Settings ***

Resource    ../resource/argumentos/argumentos.resource

*** Test Cases ***
Meu teste de soma
    ${resultado}    Somar dois numeros    1    2
    Log    ${resultado}

Meu teste de soma com argumentos
    ${resultado}    Somar dois numeros 1 e 2
    Log    ${resultado}

Meu teste imprime email
    ${resultado}    Imprime email com rodrigo miranda 43
    Log    ${resultado} 