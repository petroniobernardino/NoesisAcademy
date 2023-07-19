*** Settings ***
Library  SeleniumLibrary 

*** Test Cases ***
Valida login
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      //input[@id="user-name"]      standard_user 
    Input Text      //input[@id="password"]       secret_sauce 
    Click Element   //input[@id="login-button"] 

    Element Should Contain    //div[@class="app_logo"]        Swag Labs