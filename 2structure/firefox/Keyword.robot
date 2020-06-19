***Settings***
Resource    ./Variable.robot
Resource    ./Repository.robot
Resource    ./Localized.robot

***Keywords***
เปิดหน้าBrowser  
    open Browser  ${URL}   ${BROWSER}
    Maximize Browser Window
ค้นหาคำว่าseleniumlibrary
    input Text  ${name_Input}  ${word}
    submit Form
    Wait Until Element Contains  ${search_value}  ${searchword_value}  timeout=${wait_Timeout}
คลิกลิงค์ที่3
    click Link  ${link3th}
    element Text Should Be  ${locator_value}  ${word_value}