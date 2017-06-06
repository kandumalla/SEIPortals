*** Settings ***
Resource  ../Resources/Page Objects/SWM Page Objects/Login.robot
Resource  ../Resources/Page Objects/SWM Page Objects/Menu.Robot
Resource  ../Resources/Page Objects/SWM Page Objects/CustomerWorkPlans.robot

*** Variables ***

*** Keywords ***
#Login
Login With Valid Credentials
    Login.Send User Name Valid
    Login.Send Password Valid

Login attemp With Invalid Username
    Login.Send User Name Invalid
    Login.Send Password Valid
Login attempt with Invalid Passwod
    Login.Send User Name Valid
    Login.Send Password Invalid
Login attempt with invalid username and password
   Login.Send User Name Invalid
   Login.Send Password Invalid
Login attempt with blank Username
    Login.Send Blank Username
    Login.Send Password Valid
Login attempt with blank Password
    Login.Send User Name Valid
    Login.Send Blank Password

Login attempt with blank Username and Password
    Login.Send Blank Username
    Login.Send Blank Password
Login error message check
    Login.Check login error message presence
    Login.Check login error message text
Submit Login
    Login.click login button

Check Login Success
    Menu.Check Visibility of Home Page

#Customer Work Plans

Enter Valid Search values
    CustomerWorkPlans.Send Valid Customer
    CustomerWorkPlans.Send Valid LOS
Enter Invalid Search values
    Send Invalid Customer
    Send Invalid LOS
Enter Invalid Customer
    Send Invalid Customer
    Send Valid LOS
Enter Invalid LOS
    Send Valid Customer
    Send Invalid LOS
Enter Valid Customer ID
    CustomerWorkPlans.Send Valid Customer
Enter Valid LOS
    CustomerWorkPlans.Send Valid LOS


Enter Blank Search Values
    CustomerWorkplans.Send Blank Customer
    CustomerWorkplans.Send Blank LOS

Submit Search
    CustomerWorkPlans.Click Search Button
Check for search sucess
    CustomerWorkPlans.Check for search results

Check for disabled search button
    CustomerWorkPlans.Invalid Search Page Reaction
Check for no search results alert
    Check for no search results message visibility

Navigate to Customer Work Plan Page
    Menu.Navigate to Customer Work Plans

Start New Customer Work Plan
    Click New Work Plan button
    Click Start New Work Scope Button
Create Customer Work Plan
    Clear Work Scope Name Field
    Send Work Scope Name
    Click Create Customer Work Plan button
Confirm Customer Work Plan is created
    Check for created work plan

Edit Customer Work Plan
    Click Customer Work Plan Edit

Edit Work Scope
    Click Edit Work Scope





