***Settings***
Library    SeleniumLibrary

***Variables***
${URL}    http://google.com/
${Browser}    gc
***Keywords***

***Test Cases***
Open google
    open Browser    ${URL}    ${Browser}
    maximize Browser Window
    Capture Page Screenshot
    Close Browser
    