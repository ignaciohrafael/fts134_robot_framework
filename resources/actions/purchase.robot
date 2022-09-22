*** Settings ***
Documentation    Mapeamento das acoes da pagina de purchase.php


*** Keywords ***
Preencher nome "${nome}"
    input text  id = inputname  ${nome}

Preencher endereco "${endereco}"
    input text  id = address    ${endereco}

Preencher endereco "${cidade}"
    input text  id = city    ${cidade}

Preencher UF "${uf}"
    input text  id = state   ${uf}

Preencher CEP "${cep}"
    input text  id = zipCode   ${cep}

Selecionar bandeira "${bandeira}"
    select from list by label   id = cardType   ${bandeira}

Preencher mes de validade do cartao "${mes}"
    input text  id = creditCardYear   ${mes}

Preencher nome no cartao "${titular}"
    input text  id = nameOnCard    ${titular}

Clicar em Lembrar de Min
    checkbox should be selected     id = rememberMe

