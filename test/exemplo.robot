*** Settings ***
Library      BuiltIn

*** Variables ***
${Log}
${a}    Hello
${b}    Word
${c}    Happy
&{Pessoa}   nome=Rodrigo    sobrenome=Miranda   idade=43    EstadoCivil=Casado  Emocional=Motivado
@{Lista_Frutas}     abacaxi     morango     uva


*** Test Cases ***
Zero teste
    ${Log}  Catenate    \n Hello    Word    i'm HAPPY \n
    Log To Console  ${Log}

Primeiro teste
    [Tags]  Catenate
    ${Log}  Catenate    \n${a}     ${b}    ${c}\n
    Log To Console  ${Log}

Segundo teste
    Log To Console  \n\n Meu_Segundo_Teste \n\n

Terceiro teste  
    [Tags]  imprimir
    Log To Console  \n\n Ola ${Pessoa.nome} ${Pessoa.sobrenome} voce ja esta velho ${Pessoa.idade}!!! \n\n

Quarto teste  
    [Tags]  lista
    Log To Console  \n\n Ola meu amor ${Lista_Frutas}[1]!!! \n\n

Quinto teste  
    [Tags]  imprimir_2
    Log To Console  \n\n Ola, segue meus dados: \n ${Pessoa.nome} ${Pessoa.sobrenome}, em 2022 estou com ${Pessoa.idade} anos, sou ${Pessoa.EstadoCivil}, estou ${Pessoa.Emocional}!!! \n\n

Sexto teste
    Log To Console  \n\n Ola, meu nome é ${Pessoa.nome} ${Pessoa.sobrenome}, tenho ${Pessoa.idade} anos, sou ${Pessoa.EstadoCivil}, sou ${Pessoa.Emocional}!!! \n\n
   