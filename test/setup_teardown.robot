*** Settings ***
Suite Setup    setup da minha suite de teste
Suite Teardown    teardown da minha suite de teste

*** Test Cases ***

cenario de login SankhyaOM
    [Setup]    setup dos meus testes
    [Teardown]    teardwon dos meus testes
    Log To Console     \n\n Estou dentro do meu teste 1 \n\n

cenario de compra dentro do SankhyaOM
    [Setup]    setup dos meus testes
    [Teardown]    teardwon dos meus testes
    Log To Console     \n\n Estou dentro do meu teste 2 \n\n


*** Keywords ***
setup da minha suite de teste
    Log To Console    \n\n Estou executando minha função antes da suite de teste \n\n
