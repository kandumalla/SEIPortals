*** Settings ***
Documentation  This suite of test pertain to the SWM PM management Tool
Resource    ../Resources/Common.robot
Resource    ../Resources/SWMApp.Robot

Test Setup   Common.Begin SWM Test

Test Teardown  Common.End Web Test


*** Variables ***

*** Test Cases ***

#Login
User should be able to log in with valid credentials
    [Tags]  Smoke Login
    Login With Valid Credentials
    Submit Login
    Check Login Success

User should not be able to log in with invalid Username
    [Tags]  Smoke  Login
    Login attemp With Invalid Username
    Submit Login
    Login error message check
User should not be able to log in with invalid Password
    [Tags]  Smoke  Login
    Login attempt with Invalid Passwod
    Submit Login
    Login error message check

User should not be able to log in with invalid Username and Password
    [Tags]  Smoke  Login
    Login attempt with blank Username and Password
    Submit Login
    Login error message check


User should not be able to log in with blank Username
    [Tags]  Smoke  Login
    Login attempt with blank Username
    Submit Login
    Login error message check


User should not be able to log in with blank Password
    [Tags]  Smoke  Login
    Login attempt with blank Password
    Submit Login
    Login error message check

User should not be able to log in with blank Username and Password
    [Tags]  Smoke  Login
    Login attempt with blank Username and Password
    Submit Login
    Login error message check
#***********CustomerWorkPlans**************

User should be able to search for customer work plans
    [Tags]  Smoke   CustomerWorkPlans
    Login With Valid Credentials
    Submit Login
    Navigate to Customer Work Plan Page
    Enter Valid Search values
    Submit Search
    Check for search sucess


User should be able to search for customer work plans with only customer id
    [Tags]  Smoke  CustomerWorkPlans
    Login With Valid Credentials
    Submit Login
    Navigate to Customer Work Plan Page
    Enter Valid Customer ID
    Submit Search
    Check for search sucess


User should not get customer work plan search results if invalid customer id is used
    [Tags]  Smoke  CustomerWorkPlans
    Login With Valid Credentials
    Submit Login
    Navigate to Customer Work Plan Page
    Enter Invalid Customer
    Enter Valid LOS
    Submit Search
    Check for no search results alert


User should not get customer work plan search results if Invalid LOS is used
    [Tags]  Smoke  CustomerWorkPlans
    Login With Valid Credentials
    Submit Login
    Navigate to Customer Work Plan Page
    Enter Valid Customer ID
    Enter Invalid LOS
    Submit Search
    Check for no search results alert

User should not be able to search for customer work plans with only line of service
    [Tags]  Smoke  CustomerWorkPlans
    Login With Valid Credentials
    Submit Login
    Navigate to Customer Work Plan Page
    Enter Valid LOS
    Submit Search
    Check for disabled search button

User should not be able to search for customer work plans with blank search
    [Tags]  Smoke  CustomerWorkPlans
    Login With Valid Credentials
    Submit Login
    Navigate to Customer Work Plan Page
    Check for disabled search button

User should be able to create customer work plan
    [Tags]  Smoke  CustomerWorkPlans
    Login With Valid Credentials
    Submit Login
    Navigate to Customer Work Plan Page
    Enter Valid Customer ID
    Enter Valid LOS
    Start New Customer Work Plan
    Create Customer Work Plan
    Confirm Customer Work Plan is created


User should not be able to create customer work plan with blank work scope
    [Tags]  Smoke  CustomerWorkPlans
    Login With Valid Credentials
    Submit Login

User should not be able to create customer work plan with blank LOS
    [Tags]  Smoke   CustomerWorkPlans
    Login With Valid Credentials
    Submit Login

User should be able to edit new customer work plans
    [Tags]  Smoke   CustomerWorkPlans
    Login With Valid Credentials
    Submit Login

User should be able to edit existing customer work plans
    [Tags]  Smoke   CustomerWorkPlans
    Login With Valid Credentials
    Submit Login

User should be able to edit work scope
    [Tags]  Smoke  CustomerWorkPlans  WorkScopes
    Login With Valid Credentials
    Submit Login
    Navigate to Customer Work Plan Page
    Enter Valid Search values
    Submit Search

User should not be able to save work scope with blank task
    [Tags]  Smoke  CustomerWorkPlans  WorkScopes

User should be able to add work scopes steps
    [Tags]  Smoke  CustomerWorkPlans  WorkScopes

User should be able to remove work scope steps
    [Tags]  Smoke  CustomerWorkPlans  WorkScopes

User should be able to cancel work scope changes
    [Tags]  Smoke  CustomerWorkPlans  WorkScopes


