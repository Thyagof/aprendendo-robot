*** Settings ***
Documentation    Exercício de dicionário em Robot

*** Variables ***
&{DIAS}    janeiro=31
...        fevereiro=28
...        março=31
...        abril=30
...        maio=31
...        junho=30
...        julho=31
...        agosto=31
...        setembro=30
...        outubro=31
...        novembro=30
...        dezembro=31

*** Test Cases ***
Imprimir a quantidade de dias dos meses do ano
    Log To Console     Janeiro: ${DIAS.janeiro} dias
    Log To Console     Fevereiro: ${DIAS.fevereiro} dias
    Log To Console     Março: ${DIAS.março} dias
    Log To Console     Abril: ${DIAS.abril} dias
    Log To Console     Maio: ${DIAS.maio} dias
    Log To Console     Junho: ${DIAS.junho} dias
    Log To Console     Julho: ${DIAS.julho} dias
    Log To Console     Agosto: ${DIAS.agosto} dias
    Log To Console     Setembro: ${DIAS.setembro} dias
    Log To Console     Outubro: ${DIAS.outubro} dias
    Log To Console     Novembro: ${DIAS.novembro} dias
    Log To Console     Dezembro: ${DIAS.dezembro} dias
    