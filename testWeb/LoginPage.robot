*** Settings ***
#Criação dos Settings usados em todos os testes Web
Library             SeleniumLibrary
Resource            ../resource/Resource.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador

*** Test Case ***
TestCase 01: Verify if login page was loaded sucessfuly
  Dado que estou na pagina inicial clico no botão maior de 18 anos

TestCase 02: Verify if login page was not load when the Button "No" is clicked
  Dado que estou na pagina inicial clico no botão menor de 18 anos

TestCase 03: Validate the login button - access sucessfuly
  Dado que estou na pagina inicial clico no botão maior de 18 anos
  Verifico se a tela de login é apresentada
  Informo os dados válidos de login e clico no botão
  Verifico se a tela inicial é apresentada com sucesso

TestCase 04: Validate the login button - invalid access
  [tags]    erro
  Dado que estou na pagina inicial clico no botão maior de 18 anos
  Verifico se a tela de login é apresentada
  Informo os dados inválidos de login e clico no botão
