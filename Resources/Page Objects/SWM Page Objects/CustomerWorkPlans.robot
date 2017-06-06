*** Settings ***
Library  Selenium2Library
Library  String

*** Variables ***
${CustomerSearchField} =  xpath=//*[@id="page-content-wrapper"]/div/div[2]/div/div[1]/input
${LineOfServiceSearchField} =  xpath=//*[@id="page-content-wrapper"]/div/div[2]/div/div[2]/input
${CustomerSearchResult} =  xpath=//*[@id="typeahead-142-2464-option-0"]/a
${LOSSearchResult} =  xpath=//*[@id="typeahead-143-4027-option-0"]/a
${Searchbtn} =  xpath=//*[@id="page-content-wrapper"]/div/div[2]/div/div[3]/span/button
${NewWorkPlanbtn} =  xpath=//*[@id="page-content-wrapper"]/div/div[2]/div/h3/button

${Nosearchresultsmessage} =  xpath=//*[@id="page-content-wrapper"]/div/div[2]/div/div[5]
${CopyWorkScopeButton} =    xpath=//*[@id="page-content-wrapper"]/div/div[2]/div/div[4]/button[1]
${CopyWorkScopeFromVixxoButton} =  //*[@id="page-content-wrapper"]/div/div[2]/div/div[4]/button[2]
${StartNewWorkScopeButton} =  xpath=//*[@id="page-content-wrapper"]/div/div[2]/div/div[4]/button[3]
${CustomerWorkPlanSearchResult} =  xpath=//*[@id="page-content-wrapper"]/div/div[2]/div/div[6]/div[1]
${CustomerWorkPlansNoResultsMessage} =  //*[@id="page-content-wrapper"]/div/div[2]/div/div[5]
${WorkScopeField} =  //*[@id="page-content-wrapper"]/div/div[2]/div/div[3]/input
${CreateCustomerWorkPlanbtn} =  //*[@id="page-content-wrapper"]/div/div[2]/div/div[5]/span/button
${NewWorkPlan} =  //*[@id="page-content-wrapper"]/div/div[2]/div/div[6]/div[1]
${EditCustomerWorkPlanButton} =  //*[@id="page-content-wrapper"]/div/div[2]/div/div[6]/div[1]/h4/button

#WorkScopes
${EditWorkScopesButton} =  //*[@id="page-content-wrapper"]/div/div[2]/div/div[1]/p[5]/span[1]/button
${AddWorkScopeStepButton} =   //*/div[6]/button[3]
${RemoveWorkScopeButton} =  //*[@id="workscopeClass"]/tbody/tr/td[5]/button
${SaveWorkScopeButton}  =  //*/div[6]/button[1]
${CancelWorkScopeButton} =  //*/div[6]/button[2]
${StepNumberField1} =  //*[@id="workscopeClass"]/tbody/tr[1]/td[1]/input
${WorkScopeFrequencyDropDrown1} =  //*[@id="sel1"]
${WorkScopeCategoryField1} =  //*[@id="category"]
${WorkScopeTaskField1} =  //*[@id="workscopeClass"]/tbody/tr[3]/td[4]/textarea
${}

#DataVariables
${CustomerValid} =    Ahold USA (AHD01)
${LOSvalid} =     HVAC
${CustomerInvalid} =   FakeCustomer
${LOSinvalid} =   FakeLOS
${CustomerWorkPlanNoSearchResultsMessageText} =   There are no Work Plans for the selected criteria.
${WorkScopeName} =  AutomatedTestScope

${WorkScopeCategoryText} =  TestCategory
${WorkScopeTakseTest}  = TestTask
*** Keywords ***
Send Valid Customer
    input text  ${Customersearchfield}  ${Customervalid}

Send Invalid Customer
    input text  ${CustomerSearchField}  ${CustomerInvalid}
Send Blank Customer
    clear element text  ${Customersearchfield}

Send Valid LOS
    input text  ${LineOfServiceSearchField}  ${LOSvalid}

Send Invalid LOS
    input text  ${LineOfServiceSearchField}  ${LOSinvalid}

Send Blank LOS
    clear element text  ${LineOfServiceSearchField}
Send Work Scope Name
    input text  ${workscopefield}   ${workscopename}
Select Customer Work Plan
    click element  ${customersearchresult}

Select LOS
    click element  ${lossearchresult}

Clear Work Scope Name Field
    clear element text  ${workscopefield}
Click New Work Plan button
    click element  ${NewWorkPlanbtn}

Click Copy Work Scope button
    click element  ${CopyWorkScopeButton}
Click Copy Work Scope from Vixxo button
    click element  ${CopyWorkScopeFromVixxoButton}

Click Search Button
    click element  ${searchbtn}

Click Start New Work Scope Button
    click element  ${StartNewWorkScopeButton}
Click Create Customer Work Plan button
    click element  ${createcustomerworkplanbtn}
Check for search results
    wait until page contains element    ${customerworkplansearchresult}  10
    element should be visible  ${customerworkplansearchresult}
Check for no search results message visibility
    wait until page contains element   ${customerworkplansnoresultsmessage}  10
    get text  ${customerworkplansnoresultsmessage}
   element text should be   ${customerworkplansnoresultsmessage}    ${CustomerWorkPlanNoSearchResultsMessageText}
Check for created work plan
  wait until page contains element  ${newworkplan}  10
  page should contain element   ${newworkplan}
Check for disabled create work plan button
    element should be disabled      ${createcustomerworkplanbtn}
Click Edit Work Scope
    click element  ${editworkscopesbutton}
Click Customer Work Plan Edit
    click element  ${editcustomerworkplanbutton}
Invalid Search Page Reaction
    element should be disabled  ${searchbtn}
Work Scope Field Name Check
    page should contain





