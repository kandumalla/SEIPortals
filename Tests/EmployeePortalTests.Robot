*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/EmployeePortalApp.robot


Test Setup   Common.Begin Employee Portal Test

Test Teardown  Common.End Web Test
*** Variables ***

*** Test Cases ***



Employee Portal User Should be able to log in with valid credentials

   [Tags]  Smoke
    Login With Valid Credentials
    Submit Login
    Check Login Success
Client Portal User Should be able to log in with valid credentials

   [Tags]  Smoke
    Login With Valid Credentials
    Submit Login
    Check Login Success
User should be able to execute Tracking Number Quick Search
    [Tags]  Smoke   debug
     Login
     Enter Quick Search Tracking Number
     Quick Search Tracking Number Check
User should be able to execute Service Request Number Quick Search
    [Tags]  Smoke   debug
     Login
    # Enter Quick Search Tracking Number
    # Quick Search Tracking Number Check






User should be able to execute SR Number Quick Search

User Should be able to execute Location quick search

User should be able to execute Quote quick search

User should be able to execute VIID quick seach

#Disputes