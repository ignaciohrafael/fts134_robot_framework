
*** Settings ***
Documentation   Mapeamento das acoes da pagina index.htm
# DSL
# Além das ações podemos colocar para elementos da pagina
*** Keywords ***
Selecionar origem e destino do voo
    [Arguments] ${origem}   ${destino}
    select from list by label   name = fromPort ${origem}
    select from list by label   name = toPort   ${destino}
    click button                class = btn.btn-primary

Conferir o destino da semana
    click link                  link = destination of the week! The Beach!