*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/EmployeePortalApp.robot
Resource  ../Resources/ClientPortalApp.Robot


Test Setup   Common.Begin Employee Portal Test

#Test Teardown  Common.End Web Test
*** Variables ***

*** Test Cases ***



Employee Portal User Should be able to log in with valid credentials
   [Tags]  Smoke
    Login With Valid Employee Credentials
    Submit Login
    Check Login Success
Client Portal User Should be able to log in with valid credentials

   [Tags]  Smoke    debug
    Login With Valid Client Credentials
    Submit Login
    Check Login Success
User should be able to execute Tracking Number Quick Search
    [Tags]  Smoke
     Login
     Enter Quick Search Tracking Number
     Quick Search Tracking Number Check
User should be able to execute Service Request Quick Search
    [Tags]  Smoke
     Login
     Enter Quick Search SR Number
     Quick Search SR Number Check
User should be able to execute VIID Quick Search
    [Tags]  Smoke
     Login
     Enter Quick Search VIID
     Quick Search VIID Number Check
User should be able to execute Location Quick Search
    [Tags]  Smoke
     Login
     Enter Quick Search Location Number
     Quick Search Location Number Check

User should be able to create an invoice

    [Tags]  Smoke   Invoice
    Login
    Navigate to invoice create page
    Input invoice details
    Add Labor Line Item
    Upload Attachment
    Submit Invoice
    Check for invoice success


#Disputes