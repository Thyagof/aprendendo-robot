*** Settings ***
Documentation    Exercício sobre keywords com argumentos e retornos
Library    String

*** Variables ***
&{PESSOA}    nome=Thyago    sobrenome=Augusto

*** Test Cases ***
Caso de teste 1
    ${EMAIL}    Cria email    ${PESSOA.nome}    ${PESSOA.sobrenome}
    Log To Console   ${EMAIL}

*** Keywords ***
Cria email
    [Arguments]    ${NOME}    ${SOBRENOME}
    ${RANDOM_STRING}    Generate Random String
    ${EMAIL}    Set Variable    ${NOME}${SOBRENOME}${RANDOM_STRING}@testerobot.com
    RETURN    ${EMAIL}
    