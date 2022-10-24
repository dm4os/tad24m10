*** Settings ***
Documentation     This .robot file is a suite
...
...               Keywords are imported from the resource file
Resource          keywords.resource
Library           DateTime


*** Test Cases ***
Simple Test Case
    [Documentation]    Shows some assertion keywords
    Should Be Title Case    Robot Framework
    Should Be Equal    Var1  Var1
    Should Be True    3 + 6 == 9

Test with Keywords
    Store Text    Hail Our Robot
    Add Text To Stored Text     Overlords!
    Verify Stored Text Length    25
    ${current_text}=    Get Stored Text
    Should Be Equal    ${current_text}    Hail Our Robot Overlords!

Test for the year 2022
    [Documentation]    Tests if it is still 2022...
    ${date}=    Get Current Date    result_format=datetime
    Log    ${date}
    Should Be Equal As Strings    ${date.year}    2022

Test Case which does not fail
    #Check Correct Greeting    Hail Our Robot Overlords!
    #Check Correct Greeting    Hello World!
    
    Should Be True    3 + 6 == 9
