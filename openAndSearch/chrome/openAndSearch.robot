***Settings***
Library  SeleniumLibrary
Test Teardown   Close Browser

***Variables***
${URL}   https://google.com/
${BROWSER}      chrome 
${word}  สวัสดี
${word_value}   สวัสดี - วิกิพีเดีย
${name_Input}   name=q
${name_Button}  name=btnK
${locator_value}  xpath=//*[@id="rso"]/div[1]/div/div[1]/a/h3
${setTime}  timeout=10

${btnสินค้าออนไลน์}    xpath=//*[@id="link_sub1"]/li[2]/a
${btnมือถือราคาพิเศษ}    xpath=//*[@id="link_sub1"]/li[3]/a
${btnสิทธิพิเศษ ส่วนลด}    xpath=//*[@id="link_sub1"]/li[4]/a

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
    
Click Button Footer
    [Arguments]     ${NameBtn}
    Click Button    ${btn${NameBtn}}

***Test Cases***
openGoogle
    เปิดหน้าBrowser Google
    Click Button Footer          สินค้าออนไลน์    
    ค้นหาคำว่าสวัสดี
    กดปุ่มค้นหา
    รอผลลัพธ์การค้นหา


# //*[@id="link_sub1"]/li[2]/a

# xpath=//*[contains(text(), "สินค้าออนไลน์")]

# //*[contains(text(), "ติดตามเรา")]

# (//*[contains(text(), "ติดตามเรา")])[2]

# //*[@id="ul-click-about"]/li[contains(.,'ร่วมงานกับเรา')]

# //*[@id="link_sub1"]/li[contains(.,'สินค้าออนไลน์')]