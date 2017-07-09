***Settings***
Library  Selenium2Library

*** Test Cases ***
Simple Test
        Open Browser   ${EMPTY}  Firefox
        Go to     https://www.google.com
        Input Text    id=lst-ib    kosmonauta.net\n
        #Wait Until Page Contains   kosmonauta  30
        Sleep    10
        Page should contain   kosmonauta
        Capture page Screenshot
        Close All Browsers
