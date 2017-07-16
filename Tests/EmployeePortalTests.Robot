*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/EmployeePortalApp.robot
Resource  ../Resources/ClientPortalApp.Robot


Test Setup   Common.Begin Employee Portal Test

Test Teardown  Common.End Web Test
*** Variables ***

*** Test Cases ***
Employee Portal User Should be able to log in with valid credentials
   [Tags]  Smoke  debug runtest
    Login With Valid Employee Credentials
    Submit Login
    Check Login Success
Client Portal User Should be able to log in with valid credentials

   [Tags]  Smoke  Client runtest
    Login With Valid Client Credentials
    Submit Login
    sleep  ${delay}
    Check Login Success
    sleep  ${delay}
User should be able to execute Tracking Number Quick Search
    [Tags]  Smoke  debug  runtest
     Login
     Enter Quick Search Tracking Number
     Quick Search Tracking Number Check
     sleep  ${delay}
User should be able to execute Service Request Quick Search
    [Tags]  Smoke   debug  runtest
     Login
     Enter Quick Search SR Number
     Quick Search SR Number Check
     sleep  ${delay}
User should be able to execute VIID Quick Search
    [Tags]  Smoke   debug  runtest
     Login
     Enter Quick Search VIID
     Quick Search VIID Number Check
     sleep  ${delay}
User should be able to execute Location Quick Search
    [Tags]  Smoke  runtest
     Login
     Enter Quick Search Location Number
     Quick Search Location Number Check
     sleep  ${delay}
User should be able to create an invoice

    [Tags]  Smoke   debug  Invoice
    Login
    Navigate to invoice create page
    Input invoice details
    sleep  ${delay}
    Add Labor Line Item
    Upload Attachment
    sleep  ${delay}
    Submit Invoice
    sleep  ${delay1}
    Check for invoice success

User should be able to execute Group Action Project Forum from Review By FSR
    [Tags]  Smoke  debug
    Login
    sleep  ${delay}
    Navigate to Review By FSR
    Check ReviewByFSR Page
    sleep  ${delay}
    Process Group Action Project Forum from ReviewByFSR
    sleep  ${delay}
User should be able to execute Group Action Agree from Review By FSR
    [Tags]  Smoke   debug
    Login
    sleep  ${delay}
    Navigate to Review By FSR
    sleep  ${delay}
    Process Group Action Agree from ReviewByFSR
    sleep  ${delay}
User should be able to execute Group Action Reject Covered By Cotract from Review By FSR
    [Tags]  Smoke
    Login
    sleep  ${delay}
    Navigate to Review By FSR
    sleep  ${delay}
    Process Group Action Reject Covered By Cotract from ReviewByFSR
    sleep  ${delay}

User should be able to execute SR Number Quick Search
User Should be able to execute Location quick search
User should be able to execute Quote quick search
User should be able to execute VIID quick seach


#Disputes
