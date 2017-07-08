*** Settings ***
Library  Selenium2Library
Library  String
*** Variables ***
${ReviewByFSRText}=  xpath =  //div[1]/div/div[2]/div/div[2]/div/div/div[1]/div[1]/div/div[1]
${ProjectForum}=   xpath = //select[@name="label-2-2"]/option[@value="Project forum"]
${Agree}=   xpath = //select[@name="label-2-2"]/option[@value="Agree"]
${Reject-CoveredbyContract}=   xpath = //select[@name="label-2-2"]/option[@value="REJECT - Covered by Contract"]
${Reject-Other}=  xpath =  //select[@name="label-2-2"]/option[@value="REJECT - Other"]
${Reject-InadequateRepairDes}=  xpath   //select[@name="label-2-2"]/option[@value="REJECT - Inadequate Repair Des"]
${Reject-Excessive-Cost}=  xpath = //select[@name="label-2-2"]/option[@value="REJECT - Excessive Cost"]
${Reject-WarrantyOrCallBack}=  xpath = //select[@name="label-2-2"]/option[@value="REJECT - Warranty/Call Back"]
${UnbillableFMExpense}=  xpath = //select[@name="label-2-2"]/option[@value="UNBILLABLE  FM Expense"]
${Changeover-6508}=  xpath =  //select[@name="label-2-2"]/option[@value="Changeover (6508)"]
${Discretionary-6505}=  xpath = //select[@name="label-2-2"]/option[@value="Discretionary (6505)"]
${Equipment-6506}=  xpath = //select[@name="label-2-2"]/option[@value="Equipment (6506)"]
${Franchisee6##-7##}=  xpath = //select[@name="label-2-2"]/option[@value="Franchisee (6##/7##)"]
${StoreClosure-6507}=  xpath = //select[@name="label-2-2"]/option[@value="Store Closure (6507)"]
${CorpReactive-60##}=  xpath = //select[@name="label-2-2"]/option[@value="Corp Reactive (60##)"]
${CrimeOrCasLP-6415}=  xpath = //select[@name="label-2-2"]/option[@value="Crime/Cas LP (6415)"]
${MiscGasOrEnviron-7633}=  xpath = //select[@name="label-2-2"]/option[@value="Misc Gas/Environ (7633)"]
${CorpPM-59##}=  xpath = //select[@name="label-2-2"]/option[@value="Corp PM (59##) "]
${AQIPOrConst-7777}=  xpath = //select[@name="label-2-2"]/option[@value="AQIP/Const (7777)"]
${NuisanceCall}=  xpath = //select[@name="label-2-2"]/option[@value="Nuisance Call"]
${ProcessDropdown} =    xpath = //select[@class='form-control ng-pristine ng-valid ng-empty ng-touched']

# Data *** Variables ***
${ProjectForumVal} =  'Project Forum'
${AgreeVal} =  Agree

*** Keywords ***
ReviewByFSR Page Check
   element text should be  ${ReviewByFSRText}

Select Recommended Group Action Project Forum
   wait until page contains element  ${ProjectForum}   10s
    double click element  ${ProjectForum}

Select Recommended Group Action Agree
    wait until page contains element  ${Agree}  10s
    double click element  ${Agree}

Select Recommended Group Action Reject Covered By Cotract
    wait until page contains element  ${Reject-CoveredbyContract}
    double click element  ${Reject-CoveredbyContract}

Select Recommended Group Action Reject Other
    select from list by value  ${Reject-Other}

Select Recommended Group Action Reject Inadequate Repair Des
    select from list by value  ${Reject-InadequateRepairDes}

Select Recommended Group Action Reject Excessive Cost
    select from list by value  ${Reject-Excessive-Cost}

Select Recommended Group Action Reject Warranty Or Call Back
    select from list by value  ${Reject-WarrantyOrCallBack}

Select Recommended Group Action Unbillable FM Expense
    select from list by value  ${UnbillableFMExpense}

Select Recommended Group Action ChangeOver (6508)
    select from list by value  ${Changeover-6508}

Select Recommended Group Action Discretionary (6505)
    select from list by value  ${Discretionary-6505}

Select Recommended Group Action Equipment (6506)
    select from list by value  ${Equipment-6506}

Select Recommended Group Action Franchisee (6##/7##)
    select from list by value  ${Franchisee6##-7##}

Select Recommended Group Action Store Closure (6507)
    select from list by value  ${StoreClosure-6507}

Select Recommended Group Action Corp Reactive (60##)
    select from list by value  ${CorpReactive-60##}

Select Recommended Group Action Crime/Cas LP (6415)
    select from list by value  ${CrimeOrCasLP-6415}

Select Recommended Group Action Misc Gas/Environ (7633)
    select from list by value  ${MiscGasOrEnviron-7633}

Select Recommended Group Action Corp PM (59##)
    select from list by value  ${CorpPM-59##}

Select Recommended Group Action AQIP/Const (7777)
    select from list by value  ${AQIPOrConst-7777}

Select Recommended Group Action Nuisance Call
    select from list by value  ${NuisanceCall}

