*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                        https://www.amazon.com.br/
${MENU_ELETRONICOS}           //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}         //h1[contains(.,'Eletrônicos e Tecnologia')]
${TEXT_HEADER_ELETRONICOS}    Eletrônicos e Tecnologia
${SEARCH-RESULTS}             //span[contains(@data-component-type,'s-search-results')]

*** Keywords ***
Abrir o navegador  
    Open Browser    browser=edge
    Maximize Browser Window

Fechar o navegador  
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}  

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${TEXT_HEADER_ELETRONICOS}"
    Wait Until Page Contains    text=${TEXT_HEADER_ELETRONICOS}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITLE}"
    Title Should Be    title=${TITLE}

Verificar se aparece a categoria "${CATEGORY}"
    Element Should Be Visible    locator=//a[@aria-label='${CATEGORY}']

Digitar o nome de produto "${PRODUCT}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox  text=${PRODUCT}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa, listando o produto pesquisado
    Wait Until Page Contains Element    locator=${SEARCH-RESULTS} 
    Element Should Contain    locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Console Xbox Series S')]  expected=Xbox Series S