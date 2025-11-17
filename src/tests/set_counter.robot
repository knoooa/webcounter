*** Settings ***
Resource    resource.robot
Suite Setup    Open And Configure Browser
Suite Teardown    Close Browser
Test Setup     Reset Counter

*** Test Cases ***
Set Counter to 0
    Go To  ${HOME_URL}
    Page Should Contain  nappia painettu 0 kertaa

Set Counter To Specific Value
    Go To  ${HOME_URL}
    Input Text    name=value    7
    Click Button  Aseta
    Page Should Contain  nappia painettu 7 kertaa