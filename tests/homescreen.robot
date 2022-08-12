***Settings***
Documentation           Este documento valida os testes relacionados a tela de Add Friends do watch Odyssey

Resource                ../resources/homescreen.robot

Test Setup              Abrir aplicativo
Test Teardown           Fechar aplicativo

***Test Cases***

CT01 - Fechar o app
    Verificar se está na tela inicial do app
    Fechar app manualmente
    Confirmar fechar app 

CT02 - Acessar tela de Web View
    Verificar se está na tela inicial do app
    Clicar no botão de elementos web

CT03 - Acessar tela de registro
    Verificar se está na tela inicial do app
    Clicar no botão de registro do usuário

CT04 - Testar campo de texto
    Verificar se está na tela inicial do app
    Preencher textbox

CT05 - Testar checkbox
    Verificar se está na tela inicial do app
    Marcar/Desmarcar caixa de seleção    false

CT06 - Testar botões
    Verificar se está na tela inicial do app
    Clicar no botão de exibir barra de progresso
    Clicar no botão de Voltar
    Clicar no botão de Voltar
    Clicar no botão de Textview
    Clicar no botão de Display Toast
    Clicar no botão de Display Popup Windows
    Clicar no botão de Display and Focus