***Settings***
Library         SeleniumLibrary

***Variables***
${URL}      https://google.com/



***Keywords***
เปิด Browser
    open Browser    ${URL}    

ค้นหาคำว่าแมว
    Input Text  name="q"    แมว
    

# รอจนกว่าจะเจอคำว่าแมว
#     Wait Untill Page Contains   แมว 

***Test Cases***
Open Google
    เปิด Browser
    ค้นหาคำว่าแมว
    # รอจนกว่าจะเจอคำว่าแมว 

# Test Teardown   Close Browser

