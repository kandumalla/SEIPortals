*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/EmployeePortalApp.robot
Resource  ../Resources/ClientPortalApp.Robot

Test Setup   Common.Begin Employee Portal Test

#Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***

User should be able to create RFS
    [Tags]  Smoke
    Login With Valid Client Credentials
    Submit Login
    Navigate to RFS Create Page
    Enter RFS Details
    Submit RFS
    Check RFS Create Success

