***Settings***
Library    SeleniumLibrary

***Variables***

***Keywords***
TestArgument 
    [Arguments]    ${first}    ${second}
    Log To Console    ${first}   
    Log To Console    ${second}

***Test Cases***
Hello Arguments
    TestArgument   robot    framework