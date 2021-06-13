*** Settings ***
Library           RequestsLibrary
Library           Collections

*** Variables ***
#Constantes - Não serão alterados
${URL_API}        https://api.openweathermap.org/data/2.5
${A}              weather?q=
${B}              &appid=

#Variáveis de entrada - Alterar conforme necessidade
${APP_KEY}        <keynumber>
${City}           <City>

*** Test Cases ***
Buscar Temperatura de Cidade
  Acessar api
  Requisitar Temperatura de uma Cidade


*** Keywords ***
Acessar api
    Create Session    API    ${URL_API}

Requisitar Temperatura de uma Cidade
  ${resp}       Get On Session    API   ${A}${City}${B}${APP_KEY}
  Log           ${resp.json()}
