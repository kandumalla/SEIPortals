*** Settings ***
Documentation  Login page web elements and functions
Library  Selenium2Library
Library  String

*** Variables ***
${UserNameField}=    id=username
${PasswordField}=    id=password
${LoginBtn}=     id=Onsubmit
${FogotPasswordLink}=    xpath=//*/div[2]/div/div/section/div/div[2]/div/a
${LoginErrorAlert}=  xpath=//*/div[2]/div/div/section/div/div[2]/div/div/div[2]
#Data Variables
${ValidUsername}=   dbrantley
${ValidPassword}=   123456
${InvalidUsername}=     InvalidUser
${InvalidPassword}=     InvalidPassword

*** Keywords ***

Send User Name Valid
    input text  ${UserNameField}    ${ValidUsername}

Send User Name Invalid
    input text   ${UserNameField}    ${InvalidUsername}


Send Password Valid
    input text  ${PasswordField}  ${ValidPassword}
Send Password Invalid
    input text  ${PasswordField}  ${InvalidPassword}
Send Blank Username
    clear element text   ${UserNameField}
Send Blank Password
    clear element text   ${PasswordField}

Click Login Button
    click button  ${LoginBtn}

Check login error message presence
    element should be visible   ${LoginErrorAlert}
Check login error message text
    element text should be   ${LoginErrorAlert}   The username or password you entered is incorrect. Please try again.

