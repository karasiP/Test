***Settings***
Library    AppiumLibrary
Library    String

***Variables***
${REMOTE_URL}       http://localhost:4723/wd/hub
${platformName}     Android
${deviceName}       520011f661beb4af
${platformVersion}  8.1.0
${appActivity}      com.ais.mimo.eservice.module.splashscreen.SplashScreenActivity
${appPackage}       com.ais.mimo.eservice
${noReset}          true

${appActivity_mood}      com.calea.echo.MainActivity
${appPackage_mood}       com.calea.echo

${tel}    0847323566
${input_box}    id=com.ais.mimo.eservice:id/my_ais_login_welcome_et_account
${input_OTP}    id=com.ais.mimo.eservice:id/my_ais_login_password_page_et_otp_or_password
${btnตกลง}    id=com.ais.mimo.eservice:id/my_ais_login_welcome_btn_ok
${btnตกลงOTP}    id=com.ais.mimo.eservice:id/my_ais_login_password_page_btn_ok
${text_ระบุรหัส}    xpath=//*[@class="android.widget.TextView" and @text="ระบุรหัส OTP ที่ได้รับทาง SMS เพื่อเข้าสู่ระบบ สำหรับ AIS Fibre รหัสจะส่งไปยังหมายเลขติดต่อของคุณ (รหัส OTP มีอายุการใช้งาน 5 นาที)"]
# id=com.ais.mimo.eservice:id/my_ais_login_password_page_tv_hint

${text_mood}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[6]/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/androidx.viewpager.widget.ViewPager/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TextView
${text_box}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[5]/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout[3]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[7]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView
${textหน้าหลัก}    id=com.ais.mimo.eservice:id/my_ais_home_toolbar_tab_title

***Keywords***
Launch Application
    open Application   ${REMOTE_URL}   platformName=${platformName}  deviceName=${deviceName}  platformVersion=${platformVersion}  appActivity=${appActivity}  appPackage=${appPackage}    noReset=${noReset}
Login Application 
    Sleep    20s
    input Text    ${input_box}    ${tel}
    Click Element    ${btnตกลง}
    Wait Until Page Contains Element    ${input_OTP}

    Start Activity    ${appPackage_mood}    ${appActivity_mood}
    Click Element    ${text_mood}
    ${massage}    AppiumLibrary.Get Text    ${text_box}
    ${OTP}    Remove String Using Regexp    ${massage}  ['\\D']  
    Log To Console    ${OTP}
    Go Back    2

    input Text    ${input_OTP}    ${OTP}
    Click Element    ${btnตกลงOTP}

Verify Page 
    Wait Until Element Is Visible    ${textหน้าหลัก}

***Test Cases***
Login MyAIS Application
    Launch Application
    Login Application 
    Verify Page
