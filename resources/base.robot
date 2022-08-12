***Settings***
Documentation           Arquivo com as configurações de base do app de testes

Library                 AppiumLibrary

***Keywords***
Abrir aplicativo
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Odyssey 
    ...                 app=${EXECDIR}/app/selendroid-test-app.apk
    ...                 udid=emulator-5554
    ...                 fullReset=false
    ...                 noReset=true

Fechar aplicativo
    Capture Page Screenshot
    Close Application
