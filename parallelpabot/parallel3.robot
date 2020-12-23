***Settings***
Library    SeleniumLibrary

***Variables***
${URL}    http://google.com/
${Browser}    gc
${port}    http://localhost:4444/wd/hub

***Keywords***

***Test Cases***
open google gc2
    Open Browser    ${URL}    ${Browser}    ${port}    
    Maximize Browser Window
    # Capture Page Screenshot
    Close Browser
