*** Settings ***
Resource    ../

*** Test Cases ***
Meu teste de soma
    ${resultado}    Somar dois numeros    1    2
    Log    ${resultado}

Meu teste de soma com argumentos embutidos
    ${resultado}    Somar dois numeros    1    2
    Log    ${resultado}
