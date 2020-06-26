***Settings***
Library    SeleniumLibrary

***Variables***
${URL}    http://google.com/
${Browser}    gc
${input}    name=q
${word_search}    happy birthday

***Keywords***

***Test Cases***
Search google
    open Browser    ${URL}    ${Browser}
    maximize Browser Window
    input Text    ${input}    ${word_search}
    submit Form
    Capture Page Screenshot
    Close Browser

