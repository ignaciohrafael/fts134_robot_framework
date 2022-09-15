# Configura
*** Settings ***
Documentation    Fluxo de compra no site Blazedemo
# Comentario padrão do Python
Library          SeleniumLibrary

#Test Setup       Iniciar
Test Teardown    Encerrar

*** Variables ***
${url}      https://www.blazedemo.com
${browser}  Chrome

# Executa / Valida
*** Test Cases ***
Compra de Passagem
    [Tags]    SMOKE
    Dado que acesso o site Blazedemo
    Quando seleciono a origem como "São Paolo"
    E seleciono o destino como "New York"
    E clico no botao Find Flights
    Entao exibe o titulo informando a origem e o destino
    Quando seleciono o primeiro voo
#    E preencho o nome "Juca"
#    E seleciono a bandeira "American Express"
#    E marco a opcao Remember Me
#    E clico no botao Purchase Flight
#    Então exibe a mensagem "Thank you for your purchase today!"
#    E exibe o preco da passagem como "555 USD"



*** Keywords ***
Dado que acesso o site Blazedemo
    open browser    ${url}  ${browser}
    wait until element is visible   xpath = //h1                                          30000ms
    wait until element contains     xpath = //h1  Welcome to the Simple Travel Agency!    30000ms
    wait for condition              return document.title == "BlazeDemo"                  30000ms

Quando seleciono a origem como "${origem}"
    set test variable   ${origem}
    select from list by label   name = fromPort     ${origem}

E seleciono o destino como "${destino}"
    set test variable   ${destino}
    select from list by label   name = toPort       ${destino}

E clico no botao Find Flights
    click button    class = btn.btn-primary

Entao exibe o titulo informando a origem e o destino
    element should contain  xpath = //h3    Flights from ${origem} to ${destino}:

Quando seleciono o primeiro voo
    click button    class = btn.btn-small
E preencho o nome "Juca"
E seleciono a bandeira "American Express"
E marco a opcao Remember Me
E clico no botao Purchase Flight
Então exibe a mensagem "Thank you for your purchase today!"
E exibe o preco da passagem como "555 USD"
Encerrar
    close browser