***Settings***
Library  Selenium2Library
Test Setup   Open Browser   ${EMPTY}  Firefox
Test Teardown   Close All Browsers

***Variables***
${username}    tx1
${password}    x1234


*** Test Cases ***          Username        Password
Login To Mail Correct
      Logowanie             xxxxx           xxxxx22
      Page Should Contain   Odebrane
      Log To Console    Poprawny uzytkownik i haslo
Login To Mail Incorrect User
      Logowanie             zly mikolaj     adam1111
      Page Should Not Contain   Odebrane
      Log To Console    Niepoprawny uzytkownik
Login To Mail Incorrect Pass
      Logowanie             testerwsb_t1    alamakota
      Page Should Not Contain   Odebrane
      Log To Console    Niepoprawne hasło

***Keywords***
Logowanie
        [Arguments]    ${username}    ${password}

        #Open Browser   ${EMPTY}  Firefox
        Go to     https://www.wp.pl
        Click Element    xpath=//a[@class="_1ZUKM"]
        Input text    login_username   ${username}
        Input text    login_password   ${password}
        Click Button    zaloguj
