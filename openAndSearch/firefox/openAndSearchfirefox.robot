***Settings***
Library     SeleniumLibrary

***Variables***
${URL}      https://google.com/
${word}  สวัสดี
${word_value}   สวัสดี - วิกิพีเดีย
${name_Input}   name=q
${name_Button}  xpath=/html/body/div/div[3]/form/div[2]/div[1]/div[3]/center/input[1]
${locator_value}  xpath=//*[@id="rso"]/div[1]/div/div[1]/a/h3

***Keywords***
เปิดBrowserFireFox
    open Browser    ${URL}
ค้นหาคำว่าสวัสดี
    input Text  ${name_Input}  ${word}
    click Button  ${name_Button}
รอผลลัพธ์การค้นหา
    Wait Until Element Contains  ${locator_value}  ${word_value}  timeout=10

***Test Cases***
openfirefox
    เปิดBrowserFireFox
    ค้นหาคำว่าสวัสดี
    รอผลลัพธ์การค้นหา
    Close Browser