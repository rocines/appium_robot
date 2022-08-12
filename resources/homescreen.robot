*** Settings ***
Documentation           Arquivo com as configurações de base do app de testes

Resource                ../resources/base.robot

Library                 AppiumLibrary


*** Variables ***

${locator_l10nCD}       accessibility_id=l10nCD
${button_close}         accessibility_id=buttonTestCD
${label_message}        id=android:id/message
${button_1}             id=android:id/button1
${button_2}             id=android:id/button2
${button_webView}       accessibility_id=buttonStartWebviewCD
${button_registration}  accessibility_id=startUserRegistrationCD
${button_goBack}        id=io.selendroid.testapp:id/goBack
${textbox}              accessibility_id=my_text_fieldCD
${button_showProgress}  accessibility_id=waitingButtonTestCD
${checkbox_add}         id=io.selendroid.testapp:id/input_adds_check_box
${button_displayTV}     accessibility_id=visibleButtonTestCD
${button_displayToast}  accessibility_id=showToastButtonCD
${button_displayPW}     accessibility_id=showPopupWindowButtonCD
${button_displayFocus}  id=io.selendroid.testapp:id/topLevelElementTest
${textview_focusedText}  id=io.selendroid.testapp:id/focusedText

*** Keywords ***

Verificar se está na tela inicial do app
    Wait Until Page Contains Element    ${locator_l10nCD}        10

Fechar app manualmente
    Click Element                       ${button_close}
    Wait Until Page Contains Element    ${label_message}         10

Confirmar fechar app
    Click Element                       ${button_1}
    
Cancelar fechar app 
    Click Element                       ${button_2}

Clicar no botão de elementos web
    Click Element                       ${button_webView}
    Wait Until Page Contains Element    ${button_goBack}          10

Clicar no botão de registro do usuário
    Click Element                       ${button_registration}
    Wait Until Page Contains            Username

Clicar no botão de Voltar
    Go Back

Preencher textbox
    Input Text                          ${textbox}                Este é um texto de teste automatizado

Clicar no botão de exibir barra de progresso
    Click Element                       ${button_showProgress}
    Wait Until Page Contains            25%
    Wait Until Page Contains            50%
    Wait Until Page Contains            75%
    Wait Until Page Contains            Username

Marcar/Desmarcar caixa de seleção
    [Arguments]                         ${value}
    Click Element                       ${checkbox_add}
    Element Attribute Should Match      ${checkbox_add}           checked    ${value}

Clicar no botão de Textview
    Click Element                       ${button_displayTV}
    Wait Until Page Contains            Text is sometimes displayed

Clicar no botão de Display Toast    
    Click Element                       ${button_displayToast}
    Wait Until Page Contains            Hello selendroid toast!
    
Clicar no botão de Display Popup Windows
    Click Element                       ${button_displayPW}
    
Clicar no botão de Display and Focus
    Click Element                       ${button_displayFocus}
    Wait Until Page Contains Element    ${textview_focusedText}            