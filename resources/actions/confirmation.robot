*** Settings ***
Documentation    Mapeamento das acoes da pagina de confirmacao



*** Keywords ***
Validar a mensagem de agradecimento "${mensagem}"
    element should contain  xpath = //h1    ${mensagem}

Validar o id da passagem "${id}"
    element should contain  css = tr:nth-child(1) > td:nth-child(2)     ${id}

Validar o status da passagem "${status}"
    element should contain  css = tr:nth-child(2) > td:nth-child(2)     ${status}

Validar o preco da passagem "${preco}"
    element should contain  css = tr:nth-child(3) > td:nth-child(2)     ${preco}

Validar os ultimos 4 dígitos do cartao "${final_cartao}"
    element should contain  css = tr:nth-child(4) > td:nth-child(2)     ${final_cartao}

Validar a data de expiracao do cartao "${validade}"
    element should contain  css = tr:nth-child(5) > td:nth-child(2)     ${validade}

Validar o codigo de seguranca do cartao "${CVV}"
    element should contain  css = tr:nth-child(6) > td:nth-child(2)     ${CVV}

Validar o json da transacao "${json_esperado}"
    element text should be  tag = pre   ${json_esperado}
