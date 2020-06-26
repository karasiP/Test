***Settings***
Library    SeleniumLibrary

***Variables***
${URL}    https://robotframework.org/
${Browser}    gc
${word_verify}    ROBOT FRAME WORK/
***Keywords***

***Test Cases***
Verify Robot Framework
    Open Browser    ${URL}    ${Browser}
    Wait Until Page Contains    ${word_verify}
    Capture Page Screenshot
    Close Browser
