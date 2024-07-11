*** Variables ***
@{NUMEROS}    0  1  2  3  4  5  6  7  8  9  10

*** Test Cases ***
Teste de For
    Percorre lista e imprime 5 e 10

*** Keywords ***
Percorre lista e imprime 5 e 10
    Log To Console  ${\n}
        FOR    ${numero}    IN    @{NUMEROS}
            IF    ${numero} == 5
                Log To Console    Eu sou o número 5!
            ELSE IF    ${numero} == 10
                Log To Console    Eu sou o número 10!
            ELSE
                Log To Console    Eu não sou o número 5 e nem o 10!
            END
        END
    Log To Console  ${\n}