***Settings***
Library     SeleniumLibrary
Test Teardown  Close Browser

***Variables***
${URL}  http://google.com/
${Browser}  gc
${input_Text}   name=q
${word_search}  Waits until text appears on current page.
${locator_value}  xpath=//*[@id='rso']/div[1]/div/div[1]/a/h3
${search_value}  Waits until

***Test Cases***
searchforloop
    เปิดหน้าBrowser
    ค้นหาคำว่าseleniumlibrary
    forloopSearch

***Keywords***
เปิดหน้าBrowser
    open Browser  ${URL}   ${BROWSER}
    Maximize Browser Window
ค้นหาคำว่าseleniumlibrary
    input Text  ${input_Text}  ${word_search}
    submit Form
    Wait Until Element Is Visible  ${locator_value}  
forloopSearch
    # @{linksearch}   Create list    ${link3th}  ${link4th}  ${link5th}
    # : FOR    ${i}    IN    @{linksearch}
    # \    ${i}  Click Element  ${i}
    # \    Go Back
    # \    Wait Until Element Is Visible  ${locator_value}
    :FOR    ${i}    IN RANGE    3    6
    \    Click Element  xpath=//*[@id='rso']/div[${i}]/div/div[1]/a
    \    Wait Until Page Contains  ${search_value}  
    \    Go Back
    \    Wait Until Element Is Visible  ${locator_value}