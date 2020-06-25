***Settings***
Library    SeleniumLibrary
Test Teardown    Close Browser
Resource    ${language}/word.robot

***Variables***
${URL}    http://google.com/
${Browser}    gc
# ${text}    ดินแดนที่ไม่รู้
${input_Text}    name=q
${word_verify}    xpath=//*[@id="wp-tabs-container"]/div[2]/div/div/div/div/div/div[2]/h3/a/h3

***Keywords***
Open Page Browser
    open Browser    ${URL}    ${Browser}
    Maximize Browser Window
InputKeywordSearch
    input Text    ${input_Text}   ${text}
    submit Form
Verify Page
    Wait Until Element Is Visible    ${word_verify}

***Test Cases***
Search2Languge
    Open Page Browser
    InputKeywordSearch
    Verify Page

