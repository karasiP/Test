***Settings***
Library  SeleniumLibrary

***Variables***
${URL}   https://google.com/
${BROWSER}      chrome 
${word}  สวัสดี
${word_value}   สวัสดี - วิกิพีเดีย
${name_Input}   name=q
${name_Button}  name=btnK
${locator_value}  xpath=//*[@id="rso"]/div[1]/div/div[1]/a/h3

***Keywords***
เปิดหน้าBrowser Google   
    open Browser  ${URL}   ${BROWSER}
    Maximize Browser Window
ค้นหาคำว่าสวัสดี
    input Text  ${name_Input}  ${word}
กดปุ่มค้นหา
    click Button  ${name_Button}
รอผลลัพธ์การค้นหา
    Wait Until Element Contains  ${locator_value}  ${word_value}  timeout=10

***Test Cases***
openGoogle
    เปิดหน้าBrowser Google
    ค้นหาคำว่าสวัสดี
    กดปุ่มค้นหา
    รอผลลัพธ์การค้นหา
    Close Browser 


