***Settings***
Library     AppiumLibrary
Library     String
Library     SeleniumLibrary

*** Variables ***
${URL_ais}    https://myais.ais.co.th/login?returnUrl=%2Fhome
${Browser}    gc
${login}    id=txtLoginFormMobile
${tel_login}     0847323566
${button}    id=btnLoginFormSubmitMobile

${REMOTE_URL}       http://localhost:4723/wd/hub
${platformName}     Android
${deviceName}       7FB7N18512002496
${platformVersion}  9.0
${appActivity}      com.calea.echo.MainActivity
${appPackage}       com.calea.echo
${noReset}          true

${text_mood}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[6]/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/androidx.viewpager.widget.ViewPager/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TextView
${text_box}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[5]/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout[3]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[7]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView

${input_OTP}    id=txtLoginFormOTP
${button_login}    id=btnLoginFormSubmitLogin
${verify_page}    xpath=/html/body/app-root/myais-authorize/myais-app-container/app-container/div/myais-sidebar/aside/div/div[2]/ul/myais-sidebar-menu[1]/li/a/div[2]/div/div[2]

***Keywords***
open Web MyAIS 
    open Browser    ${URL_ais}    ${Browser}
    SeleniumLibrary.Input Text    ${login}    ${tel_login}
    SeleniumLibrary.Click Button    ${Button}

Launch app
    Open Application    ${REMOTE_URL}   platformName=${platformName}  deviceName=${deviceName}  platformVersion=${platformVersion}  appActivity=${appActivity}  appPackage=${appPackage}    noReset=${noReset}
    AppiumLibrary.Click Element    ${text_mood}
    ${massage}    AppiumLibrary.Get Text    ${text_box}
    ${OTP}    Remove String Using Regexp    ${massage}  ['\\D']  
    Log To Console    ${OTP}

    SeleniumLibrary.Input Text    ${input_OTP}  ${OTP}
    SeleniumLibrary.Click Button    ${button_login}
    SeleniumLibrary.Wait Until Element Is Visible    ${verify_page}
    Close Browser
***Test Cases***
openMyAISweb
    open Web MyAIS 
    Launch app