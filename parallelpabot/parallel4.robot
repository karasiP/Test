***Settings***
Library    SeleniumLibrary

***Variables***
${URL}    http://google.com/
${Browser}    ff
${port}    http://localhost:4444/wd/hub
***Keywords***

***Test Cases***
open google ff
    Open Browser    ${URL}    ${Browser}    ${port}  
    maximize Browser Window
    # Wait Until Page Contains    ${word_verify}
    # Capture Page Screenshot
    Close Browser
