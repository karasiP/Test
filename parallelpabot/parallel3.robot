***Settings***
Library    SeleniumLibrary

***Variables***
${URL}    https://robotframework.org/
${Browser}    gc
***Keywords***

***Test Cases***
Open Robot Framework
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Capture Page Screenshot
    Close Browser
