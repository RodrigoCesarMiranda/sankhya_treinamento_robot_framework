*** Variables ***
@{frutas}    mamao    morango    banana    kiwi    abacaxi    manga

*** Keywords ***
Contar de 0 a 9
    FOR  ${count}  IN RANGE    0    9
        Log    ${count}
    END


Percorrer itens de uma lista
    FOR  ${fruta}  IN  @{frutas}
        Log    ${fruta}
    END
    

*** Variables ***
@{Paises}    Brasil    Mexico    Bolivia    Paraguai    Uruguai

*** Keywords ***
Imprimir Pais
    FOR  ${Pais}  IN    @{Paises}   
        Log    ${Pais}
    END


Contar de 0 a 10
    FOR  ${count}  IN RANGE    0    11
        Log    Estou no número: ${count}
    END

Percorrer itens de uma lista
