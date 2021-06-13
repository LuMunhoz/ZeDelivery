*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}              http://ze.delivery
${browser}          chrome

# Informar os dados válidos para a execução dos testes de login: Email / Senha / Identificação do Usuário
${usermail}         email@email.com
${password}         senha
${username}         PrimeiroNome

*** Keywords ***
### Setup and Teardown ###
Abrir Navegador
    Open Browser    ${url}   ${browser}

Fechar Navegador
    Close Browser

### Test Case Execution ###
Dado que estou na pagina inicial clico no botão maior de 18 anos
    Click Button                    css:button[id='age-gate-button-yes']
    Title Should Be                 Zé Delivery: Entrega de bebidas geladas a preço baixo

Verifico se a tela de login é apresentada
  Click Button                            css:button[id='welcome-button-sign-in']
  Sleep                                   5

Informo os dados válidos de login e clico no botão
  Input Text                              xpath://*[@id='login-mail-input-email']       ${usermail}
  Input Text                              xpath://*[@id='login-mail-input-password']    ${password}
  Click Button                            css:button[id='login-mail-button-sign-in']

Verifico se a tela inicial é apresentada com sucesso
  Sleep                                   5
  Page Should Contain                     Olá, ${username}

### Test Case Execution - Cenários Negativos ###
Dado que estou na pagina inicial clico no botão menor de 18 anos
  Click Button                    css:button[id='age-gate-button-no']
  Page Should Contain Button      css:button[id='age-gate-button-try-again']

Informo os dados inválidos de login e clico no botão
    Input Text                              xpath://*[@id='login-mail-input-email']       abc@ggg.com
    Input Text                              xpath://*[@id='login-mail-input-password']    ${password}
    Click Button                            css:button[id='login-mail-button-sign-in']
    Sleep    5
    Page Should Contain Element    css:input[value='abc@ggg.com']
