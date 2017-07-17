*** Settings ***
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/Login.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/Home.Robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/AdvancedSearch.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/AutomatedAuditReview.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/BillingSpecialistReview.Robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/CreateInvoice.Robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/DisputesReview.Robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/FSRQuoteReview.Robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/PMBulkUpload.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/Report.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/ReviewByAccountTeam.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/ReviewByAp.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/ReviewByFSR.Robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/SideMenu.Robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/ProcessPage.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/VisualAudit.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/InvoiceDetail.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/RequestDetail.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/QuoteDetail.robot
Resource  ../Resources/Page Objects/EmployeePortalPageObjects/BucketSearchCriteria.Robot


*** Variables ***
${delay}  10s
${delay1}  20s
*** Keywords ***
Login With Valid Employee Credentials
    Login.Send User Name Valid
    Login.Send Password Valid
Login With Valid Client Credentials
    Login.Send User Name Client
    Login.Send Password Client

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
    #dismiss alert
Login
    Login.Send User Name Valid
    Login.Send Password Valid
    Login.click login button
    #dismiss alert


Check Login Success
   Home.On Home Page Check

Enter Quick Search Tracking Number
    Home.Search by Tracking Number
Enter Quick Search SR Number
    Home.Search by SR Number
Enter Quick Search Quote Number
    Home.Search by Quote Number
Enter Quick Search Location Number
    Home.Search by Location
Enter Quick Search VIID

    Home.Search by VIID

Quick Search Tracking Number Check
    Home.Search by Tracking Number Check
Quick Search SR Number Check
    Home.search by sr number check
Quick Search Quote Number Check
    Home.search by quote number check
Quick Search Location Number Check
    Home.search by location number check
Quick Search VIID Number Check
    Home.search by viid check

Navigate to Disputes
    SideMenu.Navigate to Disputes Page
Navigate to Ready To Bill
    SideMenu.Navigate to Ready To Bill Page


Navigate to invoice create page
    Click Create Invoice Link
    Input Tracking Number for Invoice
    Click Invoice Search Button
    Click Create New Invoice Button

Input invoice details
    Input SP Invoice Number
    Input GL Code
    Select GL Code
    Open Date Select Celandar
    Select Todays Date
    Input Work Description
    Select GL Routing Code

Add Labor Line Item
    click add button
    select labor line item
    select technician labor
    input sp quantity
    click save

Upload Invoice Attachment
    Upload Attachment

Submit Invoice
    Click Save Invoice
    Click Submit Invoice
Check for invoice success
    Check invoice success alert

Navigate to Review By FSR
    SideMenu.Navigate to FSR Review Page
Check ReviewByFSR Page
    ReviewByFSR.ReviewByFSR Page Check
Process Group Action Project Forum from ReviewByFSR
    ProcessPage.Click Process This Invoice
    ReviewByFSR.Select Recommended Group Action Project Forum
    ProcessPage.Enter Invoice Note
    ProcessPage.Click Invoice Action Save button
Process Group Action Agree from ReviewByFSR
    ProcessPage.Click Process This Invoice
    ReviewByFSR.Select Recommended Group Action Agree
    ProcessPage.Enter Invoice Note
    ProcessPage.Click Invoice Action Save button
Process Group Action Reject Covered By Cotract from ReviewByFSR
    ProcessPage.Click Process This Invoice
    ReviewByFSR.Select Recommended Group Action Reject Covered By Cotract
    ProcessPage.Enter Invoice Note
    ProcessPage.Click Invoice Action Save button

