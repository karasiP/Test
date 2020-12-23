***Settings***
Library    SeleniumLibrary

***Variables***
${URL}    http://google.com/
${Browser}    gc
${input}    name=q
${word_search}    happy birthday
${port}    http://localhost:4444/wd/hub
***Keywords***

***Test Cases***
open google gc
    open Browser    ${URL}    ${Browser}    ${port}
    maximize Browser Window
    # input Text    ${input}    ${word_search}
    # submit Form
    # Capture Page Screenshot
    Close Browser

