*** Settings ***
Library     Selenium2Library
Library     BuiltIn
# Library     RequestLibrary
Library     String
Library     Collections
Library     OperatingSystem
Library     DateTime
Resource        ../../Resources/Repository/MyCorporate_Common_Repository.robot
Resource        ../../Resources/Variables/MyCorporate_Common_TestData.robot
Resource        ../../Resources/Variables/MyCorporate_Common_Variables.robot
Resource        ../../Resources/Keywords/MyCorporate_Common_Keywords.robot

*** Keywords ***

Open Browser Chrome
    [Arguments]  ${_url} 
     ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
     ${disabled}    Create List    Chrome PDF Viewer
     # set  download default
     ${prefs} =    create dictionary    download.prompt_for_download=${FALSE}    download.directory_upgrade=${TRUE}    download.default_directory=${CURDIR}\\Download  safebrowsing.enabled=${TRUE}
     call method    ${CHROME_OPTIONS}    add_experimental_option    prefs    ${prefs}
     Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors  
     Create Webdriver    Chrome   chrome_options=${chrome_options} 
     #-------------------
     Go To  ${_url}   
     Maximize Browser Window

Wait Loading screen Not Visible
    ${Length}   Get Length  ${_loc_loading}
    FOR    ${i}    IN RANGE    ${Length}
        Run Keywords
        ...  Wait Until Element Is Not Visible   ${_loc_loading[${i}]}   360s  
        ...  AND  Wait Until Page Does Not Contain Element   ${_loc_loading[${i}]}   120s
    END

Wait Loading Not Visible
    ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible   class:loading   10s
    Run Keyword If	'${status}' == 'PASS'	Wait Until Element Is Not Visible   class:loading   120s


Wait Loading screen Is Visible
    ${Length}   Get Length  ${_loc_loading}
    FOR    ${i}    IN RANGE    ${Length}
        # Wait Until Page Does Not Contain Element   ${_loc_loading[${i}]}   120s
        Wait Until Element Is Visible   ${_loc_loading[${i}]}   120s  
    END

Wait Loading screen Is Visible and Not Visible
    Run Keywords
    ...   Run Keyword And Ignore Error  Wait Until Page Contains Element   class:loading   15s
    ...   AND   Wait Until Element Is Not Visible   class:loading   240s

Require data in Contact
    Sleep    7
    # Wait Loading screen Not Visible
    Wait Until Element Is Visible   ${panel_ContactType}  60s
    Click Element  ${panel_ContactType}
    Wait Until Element Is Visible   ${list_contactType}  60s
    Select From List By Value  ${list_contactType}  AUTHORIZE
    Click Element  ${panel_ServiceRole}
    Wait Until Element Is Visible   ${AddStage_ServiceRole}  60s
    Click Element   ${AddStage_ServiceRole}
    Wait Until Element Is Visible  ${tb_edit_Stage_Body}  60s
    Click Element  ${panel_AuthorizeCategory}
    Wait Until Page Contains Element    ${chk_Categoryregister}  60s
    Click Element   ${chk_Categoryregister}
    Click Element   ${SaveAddEditContactBtn}
    # Wait Loading screen Not Visible
    Sleep    7
Validate List Data Should Be Visible :
    [Arguments]   ${listdata}
    ${Length}    Get Length   ${listData}
    FOR    ${i}    IN RANGE    ${Length}
        Log  ${listdata[${i}]}
        Wait Until Element Is Visible  ${listdata[${i}]}    60s
        Element Should Be Visible  ${listdata[${i}]}     60s   
    END
Check Contact List :
    [Arguments]   ${contact}
    # Wait Loading screen Not Visible
    Scroll Element Into View  ${search_input_filed}
    Input Text  ${search_input_filed}   ${contact}
    # Wait Loading screen Not Visible
    ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible   (//td[contains(.,'${contact}')])[1]   2s
    Run Keyword If	'${status}' == 'PASS'	Delete Contact List
    Log  ${status}
Delete Contact List
    # Wait Until Element Is Visible   (//td[contains(.,'${contact_del}')])[1]   60s
    Click Execute Javascript :  ${del_contact_row1}
    Click Button   ${confirm_del}
    Wait Loading screen Not Visible

Add Contact in Account
    Wait Until Element Is Visible  ${Contact_FirstNameTH}   60s
    Input Text  ${first_name_th_field}   ${_contact_data_3}
    Input Text  ${last_name_th_field}   ทดสอบ
    Input Text  ${mobile_num_1_field}   0810466965
    Click Element  ${panel_ContactType}
    Wait Until Element Is Visible   ${list_contactType}  60s
    Select From List By Value  ${list_contactType}  AUTHORIZE
    Click Element  ${panel_ServiceRole}
    Wait Until Element Is Visible   ${AddStage_ServiceRole}  60s
    Click Element   ${AddStage_ServiceRole}
    Wait Until Element Is Visible  ${tb_edit_Stage_Body}  60s
    Sleep    7
    Scroll Element Into View    ${panel_AuthorizeCategory}
    # Execute JavaScript  document.evaluate('${panel_AuthorizeCategory}', document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    Click Element  ${panel_AuthorizeCategory}
    Wait Until Page Contains Element    ${chk_Categoryregister}  60s
    Click Element   ${chk_Categoryregister}
    Click Element   ${SaveAddEditContactBtn}
    # Wait Loading screen Not Visible
    Sleep    7
Search contact in Contact List :
    [Arguments]   ${contact}
    # Wait Loading screen Not Visible
    Scroll Element Into View   ${search_input_filed}
    Input Text  ${search_input_filed}   ${contact}
    # Wait Loading screen Not Visible
    Wait Until Element Is Visible   (//td[contains(.,'${contact}')])[1]   60s
    
Validate Edit Contact In Panel :  
    [Arguments]   ${listData}  ${class}

    ${Length}    Get Length   ${listData}
    FOR  ${i}  IN RANGE  ${Length}

        ${localor}  Set Variable  ${listData[${i}]}
        ${localor_xpath}  Set Variable   //div[@class='${class}'][contains(.,'${localor}')]
        Wait Until Element Is Visible  ${localor_xpath}    60s
        Element Should Be Visible  ${localor_xpath}    60s   

    END

Gen Current Date
    ${getdate} =  Get Current Date
    ${genDataDate} =  Convert Date  ${getdate}  result_format=%Y%m%d%H%M%S
    ${gen_Date} =  Convert Date  ${getdate}  result_format=%d
    ${gen_Month} =  Convert Date  ${getdate}  result_format=%b
    ${genDateResult} =  Convert Date  ${getdate}  result_format=%Y%m%d
    ${initialShop} =  Convert Date  ${getdate}  result_format=%m%d%H%M
    ${today_time} =  Convert Date  ${getdate}  result_format=%H%M%S
    ${date_today} =  Convert Date  ${getdate}	%d
    ${format_today} =  Convert Date  ${getdate}	result_format=%d/%m/%Y
    # ${yesterday}  Evaluate      ${date_today} - 1
    ${otp_today} =  Convert Date  ${getdate}	result_format=%Y-%m-%d
    # ${genDataDate_t} =  Convert Date	${getdate}	result_format=%Y%m${yesterday}
    ${_today} =  Convert Date  ${getdate}  result_format=%Y%m%d
    ${_time2} =  Convert Date  ${getdate} result_format=%m%d%H%M
    # Log To Console   Time=${genDataDate_t}
    # Set Test Variable    ${gen_Time}
    Set Test Variable    ${gen_Month}
    Set Test Variable    ${genDataDate}
    Set Test Variable    ${initialShop}
    Set Test Variable    ${today_time}
    Set Test Variable    ${otp_today}
    Set Test Variable    ${_today}
    Set Test Variable    ${_time2}
    Set Test Variable     ${date_today}

    ${date_today}   Convert To Integer  ${date_today}      

    Set Test Variable  ${date_today}
    Set Test Variable  ${format_today}

Input Data :
    [Arguments]   ${Local}   ${data}
    # Wait Until Element Is Enabled   ${Local}
    Wait Until Element Is Visible   ${Local}   60s
    Wait Until Page Contains Element  ${Local}  60s
    Scroll Element Into View  ${Local}
    Input Text    ${Local}   ${data}

Click Button :
    [Arguments]   ${Local}
    Wait Until Element Is Visible   ${Local}  60s
    Wait Until Page Contains Element  ${Local}  60s
    Scroll Element Into View  ${Local}
    Run Keywords
    ...   Click Element   ${Local}
    ...   AND   Wait Loading screen Not Visible

Click Element :
    [Arguments]   ${Local}
    Wait Until Element Is Visible  ${Local}  120s
    Wait Until Page Contains Element  ${Local}  60s
    Scroll Element Into View  ${Local}
    Click Element   ${Local}
    Wait Loading screen Is Visible and Not Visible

Click Element :
    [Arguments]   ${Local}
    Wait Until Element Is Visible  ${Local}  120s
    Wait Until Page Contains Element  ${Local}  60s
    Scroll Element Into View  ${Local}
    Click Element   ${Local}
    Wait Loading screen Is Visible and Not Visible

Click Execute Javascript :
    [Arguments]   ${xPath}
    ${ele}    Get WebElement   ${xPath}
    Scroll Element Into View   ${xPath}
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele} 

Get Text And Should Be True :
    [Arguments]   ${Local}   ${Value}
    Wait Until Element Is Visible  ${Local}   240s
    Scroll Element Into View  ${Local}
    ${GetValue}   Get Text   ${Local}
    Should Be True   '${GetValue}'=='${Value}'
    Set Test Variable  ${GetValue}

Get Value And Should Be True :
    [Arguments]   ${Local}   ${Value}
    Wait Until Element Is Visible  ${Local}
    ${GetValue}   Get Value   ${Local}
    Should Be True   '${GetValue}'=='${Value}'
    Set Test Variable  ${GetValue}

Condition Status FAIL :
    [Arguments]   ${condition}  ${conditionStatusFAIL}
    ${status}	${value} =	Run Keyword And Ignore Error	${condition}
    Run Keyword If	'${status}' == 'FAIL'	${conditionStatusFAIL}
    Run Keyword If	'${status}' == 'PASS'	${conditionStatusFAIL}

Check value radio :
    [Arguments]   ${_radioName}  ${_radioValue}
    Wait Until Page Contains Element  name=${_radioName}
    ${value}  get element count  css:input[name='${_radioName}'][value='${_radioValue}']:checked
    Set Test Variable  ${value}

Check Type
    [Arguments]    ${object}
    [Documentation]    Checks if the ${object } is INTEGER, NUMBER or STRING
    Return From Keyword If    not "${object}"    NONE
    ${result}    ${value}=    Run Keyword And Ignore Error    Convert To Number    ${object}
    ${isnumber}=    Run Keyword And Return Status    Should Be Equal As Strings    ${object}    ${value}
    ${result}    ${value}=    Run Keyword And Ignore Error    Convert To Integer    ${object}
    ${isinteger}=    Run Keyword And Return Status    Should Be Equal As Strings    ${object}    ${value}
    Return From Keyword If    ${isnumber}    NUMBER
    Return From Keyword If    ${isinteger}    INTEGER
    Return From Keyword    STRING

Split Data Test :
    [Arguments]   ${inputData}
    @{list_data}     Create List   ${inputData}
    log  ${list_data}
    @{Data} =    Split String      ${list_data[${0}]}      |
    log  ${Data}
    Set Test Variable  ${Data}

Split Data :
    [Arguments]   ${inputData}   ${character}

    @{list_data}     Create List   ${inputData}
    log  ${list_data}
    @{Data} =    Split String      ${list_data[${0}]}      ${character}
    log  ${Data}
    Set Test Variable  ${Data}

Click Menu Quick
    Wait Until Element Is Visible   ${menu_quick}  60s
    Click Execute Javascript :  ${menu_quick}
    
Select Menu :
    [Arguments]  ${Menu} 
    Wait Until Element Is Visible  ${Menu}   240s
    Click Element  ${Menu}

Input Text :
    [Arguments]   ${locator}  ${inputData}
    Wait Until Element Is Visible  ${locator}   60s
    Input Text  ${locator}  ${inputData}

Should Be 2digit :
    [Arguments]   ${locator}
    # Wait Until Element Is Visible 	 ${locator} 	
    ${getdata}=  Get Text    ${locator}
    # ${getdata}   Convert To Integer    ${getdata}
    # ${float2digit}=  Evaluate  "%.2f" % ${getdata}
    # Should Be True  '${getdata}' == '${float2digit}'
    @{Data} =    Split String      ${getdata}      .
    ${getdata_count}=	Get Length   ${Data}
    Should Be True	 '${getdata_count}' == '2'
    Scroll Element Into View  ${locator}

ShouldBe Count Character
    [Arguments]   ${locator}

    ${getdata}=  Get Text    ${locator}
    @{Data} =    Split String      ${getdata}      .
    ${getdata_count}=	Get Length   ${Data}
    Should Be True	 '${getdata_count}' == '2'

Scroll Height
    Sleep  1s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

Scroll Move custom
    [Arguments]  ${Number}
    Sleep  1s
    Execute JavaScript    window.scrollTo(0,${Number})

Capture Page Screenshot Scroll custom
    [Arguments]  ${Number}
    Execute JavaScript    window.scrollTo(0,${Number})
    Capture Page Screenshot 	 

Wait Until Element and Should Be Visible
    [Arguments]  ${locator}
    Wait Until Element Is Visible  ${locator}    60s
    Element Should Be Visible  ${locator}     60s
    Page Should Contain Element  ${locator}    60s

Validate Data Should Be Visible
    [Arguments]   ${Length}   ${listdata}

    FOR    ${i}    IN RANGE    ${Length}
        Log  ${listdata[${i}]}
        Wait Until Element and Should Be Visible   ${listdata[${i}]} 
    END

Validate List Data And Should Be Visible :
    [Arguments]   ${listData}  

    ${Length_listData}    Get Length   ${listData}
    Set Test Variable  ${listData}
    Set Test Variable  ${Length_listData}
    Sleep    5
    Validate Data Should Be Visible  ${Length_listData}   ${listData}

Get Selected List Labels And Should Be True :
    [Arguments]   ${Local}   ${Value}
    Wait Until Element Is Visible  ${Local}
    ${GetSelected}   Get Selected List Labels   ${Local}
    Should Be True   '${GetSelected[${0}]}'=='${Value}'
    Log  ${GetSelected[${0}]} = ${Value}
    Set Test Variable  ${GetSelected}
    # Wait Loading screen Not Visible
    
Get Selected List Labels And Should For Data list :
    [Arguments]   ${Local_SelectedList}   ${DataValue}

    Wait Until Element Is Visible  ${Local_SelectedList}
    # @{SelectedList}   Get Selected List Labels   ${Local_SelectedList}
    # log   ${SelectedList}
    @{SelectedList}  Get List Items  ${Local_SelectedList}
    ${Length_list}    Get Length   ${SelectedList}

    FOR  ${i}  IN RANGE   ${Length_list}
        Should Be True   '${SelectedList[${i}]}'=='${DataValue[${i}]}'
        Log   ${SelectedList[${i}]} = ${DataValue[${i}]}
    END

#----------------------------------------------------------------------------

Login to mycorporate :
    [Arguments]  ${inputUser}
    Split Data Test :  ${inputUser}
    Wait Until Element Is Visible   ${loc_inputTxtusername}
    Input Text  ${loc_inputTxtusername}  ${Data[${0}]}
    Input Password  ${loc_inputTxtpassword}  ${Data[${1}]}
    Click Element  ${loc_buttonSubmit}
    Wait Loading screen Is Visible and Not Visible

Click Export File Excel And Verify File Name
    Wait Until Element Is Visible 	  ${Result_Panel}   60s
    Run Keywords
    ...  Click Element   ${ButtonExport}  
    ...  AND  Gen Current Date
    ${file}    Wait Until Keyword Succeeds    1 min    5 sec    Download should be done    ${path_download}
    ${path_download} =    Join Path    ${path_download}    ${file_name}
    ${path_logdownload} =    Join Path    ${path_logdownload}  ${file_name}
    @{Data} =    Split String      ${file_name}      _
    Should Be True  '${Data[${0}]}' == '${FilenameExport}'
    Should Be True  '${Data[${1}]}' == '${_today}'     # check date
    @{Data} =    Split String      ${Data[${2}]}      .
    ${getdata_count}=	Get Length   ${Data[${0}]}
    # Should Be True  '${Data[${0}]}' == '${today_time}'   # check time
    Should Be True	 '${getdata_count}' == '6'
    Move File   ${path_download}    ${path_logdownload}
    
Download should be done
    [Arguments]  ${path_download}
    ${files}  List Files In Directory  ${path_download}
    Length Should Be  ${files}  1
    ${file_name}    Set Variable    ${files[${0}]}
    Set Test Variable   ${file_name}

Join Path And Check
    [Arguments]    ${expected}    @{inputs}
    ${path} =    Join Path    @{inputs}
    Should Be Equal    ${path}    ${expected}    Joining ${inputs} failed

Verify Panel Search in DBD Profile page
    Validate List Data And Should Be Visible :  ${PanelSearchDBDProfile}

Validate Result DBD Profile
    Scroll Height
    Validate List Data And Should Be Visible :  ${list_ResultDBDProfile}
    Should Be 2digit :  ${RegisteredCapital}
    Wait Until Element and Should Be Visible  ${magnifyingGlass}    

Open web and user login :
    [Arguments]   ${url_mycorporate}  ${User_name}
    Open Browser Chrome  ${url_mycorporate}
    Login to mycorporate :  ${User_name}

Search Account :
    [Arguments]    ${AccountName} 
    Input Data :  ${MCinput Search}  ${AccountName}
    Click Element :  ${MCbtn Search}

Login WEB Page Select SubMenu Manage Contact AND verify panel Search Account :
    [Arguments]   ${User_name}

    Login to mycorporate :  ${User_name}
    Select Menu :  ${Menu Contact Management}
    Select Menu :  ${Menu Manage Contact}
    Wait Until Element and Should Be Visible  ${MCpanel Search Account}

Validate decimal point :
    [Arguments]   ${listData}

    ${Length_list_id_statement}    Get Length   ${listData}

    FOR    ${i}    IN RANGE    ${Length_list_id_statement}
        Should Be 2digit :  ${listData[${i}]}
    END

Validate float None :
    [Arguments]   ${dataTest}
    ${getdata}  Get Text 	 ${dataTest}
    ${floatNone}=  Evaluate  "%.0f" % ${getdata}
    Should Be True  '${getdata}' == '${floatNone}'

Validate Contact Filter in Table 

    Wait Until Element Is Not Visible 	 ${checck_elerow2}   60s
    Wait Until Element Is Visible 	 ${_contains_name2}    60s
    
    @{list_locContact} =    Create List
    ...  ${ContactBody}
    ...  ${ContactBodyName}
    ...  ${ContactSurname}
    ...  ${ContactBodyType}
    ...  ${ContactHold}

    ${Length_list_locContact}    Get Length   ${list_locContact}
    FOR  ${i}  IN RANGE   ${Length_list_locContact}
        log  ${list_locContact[${i}]}
        ${getdata}=  Get Text    ${list_locContact[${i}]}
        Should Be True	 '${getdata}' == '${DataContact[${i}]}'
    END

Click Logout
    # Wait Until Page Contains Element  
    Wait Until Element Is Visible 	 ${Btn_Logout}  60s
    Wait Loading Not Visible
    Click Execute Javascript :  ${Btn_Logout}
    Wait Until Page Contains Element  ${Btn_Logout_ok}  60s
    Wait Loading Not Visible
    Click Execute Javascript :  ${Btn_Logout_ok}
    # Wait Until Page Contains Element  ${loc_inputTxtusername}  60s
    
Search AccountName And Edit Account Information
    Wait Until Element and Should Be Visible  ${MCpanel Search Account}
    Input Data :  ${MCinput Search}  ${AccountName}
    Click Element :  ${MCbtn Search}
    # Wait Until Element and Should Be Visible  ${Verify Show Search Account}
    Click Element :  ${MC_Edit}
    Wait Until Element and Should Be Visible  ${Panel Account Information}
    Wait Until Element and Should Be Visible  ${Panel Feature}
    
Validate Detail Mobile or Non Mobile
    
    Wait Until Element and Should Be Visible  ${Panel_Manage_Mobile}
    Validate List Data And Should Be Visible :  ${ListPMDMField}
    Validate List Data And Should Be Visible :  ${listPMDMElement}
    

Select Feature From List By Value And Select Redio :
    [Arguments]   ${ListValue}  ${RedioValue}
    Wait Until Element Is Visible 	 ${loc_SelectFeature}   60s
    Select From List By Value  ${loc_SelectFeature}  ${ListValue}
    Wait Until Element Is Visible  ${RedioValue}  60s
    Click Element :  ${RedioValue}
    Wait Loading screen Is Visible and Not Visible
    ${value} =	Run Keyword And Ignore Error  Wait Until Element Is Visible  ${Panel_View_Account}  10s
    Log  ${value}
 
Validate When Click Button View
    Scroll Move custom  100
    Wait Until Element Is Visible  ${Status_VIEW}   60s
    Click Element :  ${MaskingBTN}     # Status MASK
    ${status}	${value} =	Run Keyword And Ignore Error  Get Text And Should Be True :  ${MaskingBTN}  ${MASK}
    Run Keyword If	'${status}' == 'FAIL'	Sleep  0.5s
    Run Keyword If	'${status}' == 'FAIL'	Get Text And Should Be True :  ${MaskingBTN}  ${MASK}
    Verify Data and Should Be True :  ${list_locVerifyMaskingBTN_MASK}  ${list_VerifyMaskingBTN_MASK}

Validate Click Button MASK Before out of time 
    Wait Until Element Is Visible  ${Status_VIEW}   60s
    Scroll Move custom  100
    Click Element :  ${MaskingBTN}     # Status MASK
    ${status}	${value} =	Run Keyword And Ignore Error  Get Text And Should Be True :  ${MaskingBTN}  ${MASK}
    Run Keyword If	'${status}' == 'FAIL'	Sleep  0.5s
    Run Keyword If	'${status}' == 'FAIL'	Get Text And Should Be True :  ${MaskingBTN}  ${MASK}
    # Capture Page Screenshot
    Click Element :  ${MaskingBTN}     # Status VIEW
    ${status}	${value} =	Run Keyword And Ignore Error  Get Text And Should Be True :  ${MaskingBTN}  ${VIEW}
    Run Keyword If	'${status}' == 'FAIL'	Sleep  0.5s
    Run Keyword If	'${status}' == 'FAIL'	Get Text And Should Be True :  ${MaskingBTN}  ${VIEW}
    # Capture Page Screenshot
    Verify Data and Should Be True :  ${list_VIEW_locVerifyMaskingBTN}  ${list_VerifyMaskingBTN_VIEW}

Validate When Timer Is Mask
    Wait Until Element Is Visible  ${Status_VIEW}   120s
    Wait Until Element Is Visible  ${loc_LastNameTH_VIEW}   120s
    Get Text And Should Be True :  ${MaskingBTN}  ${VIEW}
    Verify Data and Should Be True :  ${list_VIEW_locVerifyMaskingBTN}  ${list_VerifyMaskingBTN_VIEW}

Verify Data and Should Be True :
    [Arguments]  ${loc_dataList}  ${dataVerify}

    @{list}     Create List
    ${Length_list}    Get Length   ${loc_dataList}
    FOR  ${i}  IN RANGE   ${Length_list}
        ${getdata}=  Get Text 	 ${loc_dataList[${i}]}
        # Should Be True	 '${getdata}' == '${dataVerify[${i}]}'
        Append To List   ${list}    ${getdata}
    END
    [Return]        ${list}
    log  ${list}
    Set Test Variable  ${list}

    ${Length_list}    Get Length   ${list}
    FOR  ${i}  IN RANGE   ${Length_list}
        Should Be True	 '${list[${i}]}' == '${dataVerify[${i}]}'
    END

Input Contact And Search In Contact List :
    [Arguments]   ${ContactSearch}
    Input Data :  ${loc_contactSearch}  ${ContactSearch}
    Wait Until Element and Should Be Visible  ${tbody_contactList}

Input Contact And Search In List Non Mobile Information :
    [Arguments]   ${ContactSearch}
    Input Data :  ${loc_contactSearch}  ${ContactSearch}
    Wait Until Element and Should Be Visible  ${tbody_contactList}

Validate When Click Button Status VIEW :
    [Arguments]   ${list_VerifyMaskingBTN_VIEW}
    Wait Until Element Is Visible  ${Status_VIEW}   60s
    Scroll Move custom  300
    # Input Data :  ${loc_contactSearch}  ${ContactSearch}
    Wait Until Element Is Visible  ${loc_LastNameTH_VIEW}   60s
    Get Text And Should Be True :  ${MaskingBTN}  ${VIEW}
    Verify Data and Should Be True :  ${list_VIEW_locVerifyMaskingBTN}  ${list_VerifyMaskingBTN_VIEW}

Validate Data MASK In Search :
    [Arguments]  ${inputData}
    Wait Until Element and Should Be Visible  ${loc_contactSearch}  
    Scroll Move custom  300

    ${Length_list}    Get Length   ${inputData}
    FOR   ${i}  IN RANGE   ${Length_list}
        Input Data :  ${loc_contactSearch}  ${inputData[${i}]}
        # Wait Until Element Is Visible 	 ${tbody_contactList}
        Clear Element Text  ${loc_contactSearch}
    END

Validate Data Edit Account Detail Mobile Or Non Mobile
    Wait Loading screen Is Visible and Not Visible
    Validate List Data And Should Be Visible :  ${List Field Edit Account Detail Mobile}
    Validate List Data And Should Be Visible :  ${List Element Edit Account Detail Mobile}

Verify Length Character :
    [Arguments]    ${inputData}   ${character}   ${numberCount}   ${position}

    Split Data :   ${inputData}   ${character}
    ${Data} =	Get From List	${Data}  ${position}
    ${getdata_count}=	Get Length   ${Data}
    Should Be True	 '${getdata_count}' == '${numberCount}'

verify two mails
    Wait Until Element Is Visible  ${TwoEmails}  60s
    ${TwoEmails}   Get Text   ${TwoEmails}
    Split Data :   ${TwoEmails}   ;
    ${mail_1}  Set Variable  ${Data[${0}]}
    ${mail_2}  Set Variable  ${Data[${1}]}
    Verify Length Character :  ${mail_1}  x  ${3}  ${0}
    Verify Length Character :  ${mail_2}  x  ${3}  ${0}
    Log   ${mail_1} , ${mail_2}

Validate Column Action
    Wait Until Element Is Visible  ${Status_VIEW}   60s
    Scroll Move custom  300
    # Input Data :  ${loc_contactSearch}  ${ContactSearch}
    # Verify button edit and delete
    Run Keywords
    ...   Wait Until Element and Should Be Visible  ${btn_editInAction}
    ...   AND   Wait Until Element and Should Be Visible  ${btn_deleteInAction}

Validate Panel Edit Contact for Column Action
    Wait Until Element and Should Be Visible  ${btn_editInAction}
    Click Element :  ${btn_editInAction}
    Wait Until Element and Should Be Visible  ${EditContactPanel}

Validate Feature Delete Contact :
    [Arguments]  ${UsertestDel}
    Wait Until Element Is Visible  ${Status_VIEW}   60s
    Scroll Move custom  300
    Input Data :  ${loc_contactSearch}  ${UsertestDel}
    Delete Contact In Engineer Account

Validate Data Delete Contact :
    [Arguments]    ${contact_name}
    Wait Until Element Is Visible  ${Status_VIEW}   60s
    Scroll Move custom  300
    Input Data :  ${loc_contactSearch}  ${contact_name}
    ${status}	${value} =	Run Keyword And Ignore Error  Wait Until Element Is Not Visible  ${tbody_contactList}   
    Log  ${status}

Delete Contact In Engineer Account

    Wait Loading Not Visible
    FOR  ${i}  IN RANGE  50
        ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible  (//a[contains(@title,'Delete')])[${i}]   2s
        ${location}  Set Variable  (//a[contains(@title,'Delete')])[${i}]
        Set Test Variable  ${location}
        Exit For Loop IF  '${status}' == 'PASS'
    END

    Click Execute Javascript :  ${location}
    Click Button  ${btnconfirm_del_Confirm_Delete}

Delete Account Contact :
    [Arguments]   ${contact_name}

    Wait Until Element Is Visible  ${loc_contactSearch}   60s
    Input Data :  ${loc_contactSearch}  ${contact_name}
    ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible  ${btnDel_contactListBodyRow1}
    Run Keyword If	'${status}' == 'PASS'	Confirm Delete Account Contact

Confirm Delete Account Contact
    Click Execute Javascript :  ${btnDel_contactListBodyRow1}
    Wait Until Element Is Visible  ${btnconfirm_del_Confirm_Delete}  60s
    Click Element :  ${btnconfirm_del_Confirm_Delete}
    # Wait Loading screen Not Visible

Check Contact was found in the system
    ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible  ${popup_Confirm_btn}  10s
    Run Keyword If	'${status}' == 'PASS'	Click Element :  ${popup_Confirm_btn}
    # Wait Loading screen Not Visible

Delete Contact In Contact List :
    [Arguments]   ${contact_name}

    Wait Until Element and Should Be Visible  (//td[@class='text-left'][contains(.,'${contact_name}')])[1]
    Click Element :  ${btnDel_contactListBodyTr1}     # click Delete
    Wait Until Element and Should Be Visible  ${body_confirmDel}
    Click Element :  ${btn_confirmDelete}     # Click Confirm
    Wait Loading screen Not Visible
    Wait Until Element Is Not Visible 	(//td[@class='text-left'][contains(.,'${contact_name}')])[1] 

Search Contact :
    [Arguments]   ${Account_SearchAddContact}
    Input Data :  ${CONTACT_SEARCH_VALUE}  ${Account_SearchAddContact}
    Click Element :  ${SearchContactBTN}
    # Wait Loading screen Not Visible
    Wait Until Element and Should Be Visible  ${AddContactListBody}

Verify Case Select Title is Other And Can Write In Textbox Title Other
    Wait Until Element and Should Be Visible  ${AddCon_Element_Title}
    # Check Text box Disable. Will can't input data
    ${status}	${value} =	Run Keyword And Ignore Error	Input Data :  ${AddCon_Contact_TitleOther}  ${Test input text}
    Run Keyword If	'${status}' == 'FAIL'	Select From List By Value  ${AddCon_Element_Title}  ${Other}
    Get Text And Should Be True :  ${AddCon_Contact_TitleOther}  ${EMPTY}
    # Enter again
    Input Data :  ${AddCon_Contact_TitleOther}  ${Test input text}

Verify EMPTY Data And Input Text Limit character :
    [Arguments]  ${locator}  ${dataCharacter}
    Get Text And Should Be True :  ${locator}  ${EMPTY}
    Input Data :  ${locator}  ${dataCharacter}
    Click Element :  ${_Panel_ContactBTN_Save}
    Verify Is Visible Ignore :  ${listElementIgnore}

Verify Is Visible Ignore :
    [Arguments]   ${listElementIgnore}

    ${Length_list}    Get Length   ${listElementIgnore}
    FOR   ${i}  IN RANGE   ${Length_list}
        ${value} =	Run Keyword And Ignore Error  Wait Until Element Is Visible  ${listElementIgnore[${i}]}  20s
    END

Verify Format Date
    # Use input Today
    Get Text And Should Be True :  ${AddCon_Pcon_Element_Birthdate}  ${EMPTY}
    Gen Current Date
    Click Element :  ${AddCon_Pcon_Element_Birthdate}
    Click Element :  //td[@class='day'][contains(.,'${date_today}')]
    ${_today}  Get Value  ${AddCon_Pcon_Element_Birthdate}
    Should Be True   '${_today}'=='${format_today}'
    
Validate Format Mail :
    [Arguments]   ${value}
    Get Text And Should Be True :  ${AddCon_Contact_Email}  ${EMPTY}
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_Email}  ${StringLength_280}
    Wait Until Page Contains Element  ${emails_errorFormat}   ${_timeout}
    Sleep  1s
    ${getdata}=  Get Value    ${emails_errorFormat}
    ${getdata_count}=	Get Length   ${getdata}
    Should Be True	 '${getdata_count}' == '${value}'
    Wait Until Element Is Visible  ${emails_errorFormat}  ${_timeout}
    Clear Element Text  ${emails_errorFormat}
    Press Keys  ${emails_errorFormat}  \DELETE
    Wait Until Element Is Not Visible 	 ${emails_errorFormat}  ${_timeout}
    Input Data :  ${AddCon_Contact_Email}  ${_mailtest[${0}]}
    Click Element :  ${_Panel_ContactBTN_Save}

Verify Should Be Length :
    [Arguments]  ${locator}  ${ShouldBeLength}
    Wait Until Element Is Visible  ${locator}  ${_timeout}
    ${getdata}=  Get Value    ${locator}
    ${getdata_count}=	Get Length   ${getdata}
    Should Be True	 '${getdata_count}' == '${ShouldBeLength}'

Validate Format Mobile :
    [Arguments]  ${locator}  ${Err_locator}

    Wait Until Element Is Visible  ${locator}  ${_timeout}

    FOR  ${i}  IN RANGE  10
        ${_FrontMobile}  Set Variable  0${i}
        ${mobileNo}      Set Variable    ${_FrontMobile}${_mobiletest}
        Input Data :  ${locator}  ${mobileNo}
        Click Element :  ${_Panel_ContactBTN_Save}
        Wait Loading screen Is Visible and Not Visible
        #Capture Page Screenshot
        # *** Keyword 'BuiltIn.Run Keyword Unless' is deprecated.
        
        ${txt}=    Run Keyword If    '${_FrontMobile}' == '06' or '${_FrontMobile}' == '08' or '${_FrontMobile}' == '09'    Log   Check Format mobile 
            # ...    ELSE IF    ${lenght} < 5    Some Keyword  
            ...    ELSE    Check format mobile :  ${Err_locator}  
        Log       ${txt}
        Clear Element Text  ${locator}
        Input Data :  ${locator}  ${0}
        Wait Until Element Is Not Visible 	 ${Err_locator}  ${_timeout}
    END  

Select Button Cancel Popup Confirm
    ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible  ${popup_Confirm_btn}  1s
    Run Keyword If	'${status}' == 'PASS'	Click Element  ${popup_cancel}
    Wait Loading screen Not Visible
  
Check format mobile :
    [Arguments]  ${locator}
    Wait Until Element Is Visible  ${locator}  ${_timeout}

Validate Popup Delete Confirm
    Validate List Data And Should Be Visible :  ${list_PopupEditContactConfirm}
    Get Text And Should Be True :  ${popup_body}  ${body_confirmDel}

Scroll Page To Location
    [Arguments]   ${id}  ${x_location}    ${y_location}
    Execute JavaScript    document.getElementById('${id}').scrollTo(${x_location},${y_location})

Condition Status PASS :
    [Arguments]   ${condition}  ${conditionStatusFAIL}
    ${status}	${value} =	Run Keyword And Ignore Error	${condition}
    # Run Keyword If	'${status}' == 'PASS'	${conditionStatusPASS}

Create Contact for Account :
    [Arguments]   ${contact_name}

    Wait Until Element Is Visible  ${ACD_Contact_FirstNameTH}  60s
    Input Data :  ${ACD_Contact_FirstNameTH}  ${contact_name}
    Input Data :  ${AddCon_Contact_LastNameTH}  เทส
    Input Data :  ${AddCon_Contact_MobileNo1}  0810000000
    Click Element :  ${_Panel_ContactBTN_Save}
    Wait Loading screen Is Visible and Not Visible
    ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible  ${popup_Confirm_btn}
    Run Keyword If	'${status}' == 'PASS'	Click Element :  ${popup_Confirm_btn}
    Wait Loading Not Visible
    Wait Until Element Is Visible  ${loc_contactSearch}   120s
    Input Data :  ${loc_contactSearch}  ${contact_name}
    Wait Until Element and Should Be Visible  (//td[@class='text-left'][contains(.,'${contact_nameTestsystem02}')])[1]

Verify Until Element
    Wait Until Element Is Visible  ${loc_contactSearch}   60s
    Input Data :  ${loc_contactSearch}  ${contact_name}
    Wait Until Element Is Visible  (//td[@class='text-left'][contains(.,'${contact_name}')])[1]

Delete contact name
    Delete Contact In Contact List :  ${contact_name}

Check Contact before delete
    ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible  ${btn_delContactInList}  10s
    Run Keyword If	'${status}' == 'FAIL'	Create Data Test Add Contact for Non Mobile :  ${contact_nameTestsystem}

Create Data Test Add Contact for Non Mobile : 
    [Arguments]   ${contact_name}
    # Wait Loading screen Not Visible
    Click Element :  ${NonM_AddContactBtn}
    Click Element :  ${DESKTOP_AddNewContactBTN}
    Input Data :  ${ACD_Contact_FirstNameTH}  ${contact_name}
    Input Data :  ${AddCon_Contact_LastNameTH}  เทส
    Input Data :  ${AddCon_Contact_MobileNo1}  0810000000
    Click Element :  ${_Panel_ContactBTN_Save}
    # Wait Loading screen Not Visible

Create Data Test Add Contact for Account :
    [Arguments]   ${contact_name}
    Click Element :  ${ContactPanelAddBtn}
    Click Element :  ${DESKTOP_AddNewContactBTN}
    Input Data :  ${ACD_Contact_FirstNameTH}  ${contact_name}
    Input Data :  ${AddCon_Contact_LastNameTH}  ทดสอบ
    Input Data :  ${AddCon_Contact_MobileNo1}  0810000000
    Click Element :  ${_Panel_ContactBTN_Save}
    Wait Loading screen Is Visible and Not Visible

Validate View Non Mobile :
    [Arguments]   ${listData}

    ${Length}    Get Length   ${listData}
    FOR  ${i}  IN RANGE  ${Length}

        ${localor}  Set Variable  ${listData[${i}]}
        ${localor_xpath}  Set Variable  (//div[@class='col-md-2 col-lg-2'][contains(.,'${localor}')])[1]
        Wait Until Element and Should Be Visible  ${localor_xpath}
    END
    Wait Until Element and Should Be Visible  ${btnClose_nonMobile}
    Validate List Data And Should Be Visible :  ${EleDatatest_NonMobile}


# Verify Data Test View Non Mobile :
#     [Arguments]   ${listData}
    
#     ${Length}    Get Length   ${listData}

#     FOR  ${i}  IN RANGE  ${Length}

#         ${localor}  Set Variable  ${listData[${i}]}
#         Wait Until Element and Should Be Visible  ${localor}

#     END

Verify Data Test View Contact :
    [Arguments]   ${listData}
    
    ${Length}    Get Length   ${listData}

    FOR  ${i}  IN RANGE  ${Length}

        ${localor}  Set Variable  ${listData[${i}]}
        Wait Until Element and Should Be Visible  ${localor}

    END

Validate Data Test When Click Button View
    Scroll Move custom  100
    Click Element :  ${DESKTOP_MaskingBTN}     # Status MASK
    ${status}	${value} =	Run Keyword And Ignore Error  Get Text And Should Be True :  ${DESKTOP_MaskingBTN}  ${MASK}
    Run Keyword If	'${status}' == 'FAIL'	Sleep  0.5s
    Run Keyword If	'${status}' == 'FAIL'	Get Text And Should Be True :  ${DESKTOP_MaskingBTN}  ${MASK}
    # Validate List Data And Should Be Visible :  ${list_locVerify_MaskingBTN_VIEW}

Validate Data Test When Click Button View2 :

    [Arguments]    ${butoonView}    ${listValidate}
    Wait Until Element Is Visible  ${butoonView}   60s
    # Get Text And Should Be True :  ${butoonView}  ${VIEW}
    # Click Button :  ${butoonView}

    # Get Text And Should Be True :  ${butoonView}  ${MASK}
    # Click Element  ${butoonView}
    ${status}	${value} =	Run Keyword And Ignore Error	Get Text And Should Be True :  ${butoonView}  ${MASK}
    Run Keyword If	'${status}' == 'FAIL'	Click Element  ${butoonView}

    Validate List Data And Should Be Visible :  ${listValidate}

Validate Data Test When Click Button Mask
    Scroll Move custom  100
    Click Element :  ${DESKTOP_MaskingBTN}     # Status MASK
    ${status}	${value} =	Run Keyword And Ignore Error  Get Text And Should Be True :  ${DESKTOP_MaskingBTN}  ${MASK}
    Run Keyword If	'${status}' == 'FAIL'	Sleep  0.5s
    Run Keyword If	'${status}' == 'FAIL'	Get Text And Should Be True :  ${DESKTOP_MaskingBTN}  ${MASK}
    # Capture Page Screenshot
    Click Element :  ${DESKTOP_MaskingBTN}     # Status VIEW
    ${status}	${value} =	Run Keyword And Ignore Error  Get Text And Should Be True :  ${DESKTOP_MaskingBTN}  ${VIEW}
    Run Keyword If	'${status}' == 'FAIL'	Sleep  0.5s
    Run Keyword If	'${status}' == 'FAIL'	Get Text And Should Be True :  ${DESKTOP_MaskingBTN}  ${VIEW}
    # Capture Page Screenshot
    # Validate List Data And Should Be Visible :  ${list_locVerify_MaskingBTN_VIEW3}

Validate Field Edit Non Mobile :
    [Arguments]   ${listData}

    ${Length}    Get Length   ${listData}

    FOR  ${i}  IN RANGE  ${Length}

        ${x}  Set Variable  2
        ${localor}  Set Variable  ${listData[${i}]}

        Run Keyword If   '${listData[${i}]}' == 'Monthly report' or '${listData[${i}]}' == 'NOC'
        ...  Set Value Plus :  1
        Run Keyword If   '${listData[${i}]}' == 'Follow Up Time' or '${listData[${i}]}' == 'Number For Special'   
        ...  Set Value minus :  1
        Run Keyword If   '${listData[${i}]}' == 'Condition'
        ...  Set Value Plus :  4

        ${localor_xpath}  Set Variable  (//div[@class='col-md-2 col-lg-2'][contains(.,'${localor}')])[${x}]
        Wait Until Element and Should Be Visible  ${localor_xpath}

    END

    Wait Until Element and Should Be Visible  ${field edit Follow Up By}
    Wait Until Element and Should Be Visible  ${btnclose_EditNonMobile}


Set Value Plus :
    [Arguments]  ${plusNumber}
    ${x}  Set Variable  2
    ${x}  Evaluate     ${x} + ${plusNumber}
    Set Test Variable  ${x}

Set Value minus :
    [Arguments]  ${plusNumber}
    ${x}  Set Variable  2
    ${x}  Evaluate     ${x} - ${plusNumber}
    Set Test Variable  ${x}

Validate Panel List Contact Information :
    [Arguments]   ${listData}

    ${Length}    Get Length   ${listData}
    FOR  ${i}  IN RANGE  ${Length}

        ${x}  Set Variable  1
        ${localor}  Set Variable  ${listData[${i}]}
        ${localor_xpath}  Set Variable  (//th[@class='thead-padding text-center'][contains(.,'${localor}')])[${x}] 
        Wait Until Element and Should Be Visible  ${localor_xpath}

    END

    # Wait Until Element and Should Be Visible  ${Action List Contact}

# Test xxxx
#     Wait Until Element is Enabled  //*[starts-with(@id, 'iconMenu_icon_bobjid_')]   30s
#     @{elements}   Get Webelements    //*[starts-with(@id, 'iconMenu_icon_bobjid_')]
#     @{ids}    Evaluate    [elem.get_attribute('id') for elem in $elements]
#     Log  ${ids}
#     ${element}    Get Substring    @{ids}     21    -13

Click Edit Contact List

    FOR  ${i}  IN RANGE  50
        ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible  (//a[contains(@title,'Edit')])[${i}]   2s
        ${location}  Set Variable  (//a[contains(@title,'Edit')])[${i}]
        Log  ${location}
        Set Test Variable  ${location}
        Exit For Loop IF  '${status}' == 'PASS'
    END

    Click Execute Javascript :  ${location}
    Wait Loading Not Visible

Click Button Contact List :
    [Arguments]   ${locator}


    FOR  ${i}  IN RANGE  50

        ${locator}  Set Variable  ${locator}[${i}]
        Log  ${locator}
        ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible  ${locator}   2s
        Set Test Variable  ${locator}
        Exit For Loop IF  '${status}' == 'PASS'
    END

    Click Execute Javascript :  ${locator}

Close popup and clear element text input search
#     [Arguments]  ${btn_ClosePopup}
    Click Element :  ${btn_ClosePopup} 
#     # Wait Loading screen Not Visible
    Clear Element Text  ${Search_ListContactInformation}

# Verify Header In Table :
#     [Arguments]   ${listDate}

#     ${Length_listData}    Get Length   ${listDate}

#     FOR  ${i}  IN RANGE  ${Length_listData}

#         ${locator}  Set Variable  ${listDate[${i}]}
#         Log  ${locator}

#         FOR  ${i}  IN RANGE  20
#             ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible  (//th[@class='thead-padding text-center'][contains(.,'${locator}')])[${i}]   0.5s
#             ${location}  Set Variable  (//th[@class='thead-padding text-center'][contains(.,'${locator}')])[${i}]
#             Log  ${location}
#             # Set Test Variable  ${location}
#             Exit For Loop IF  '${status}' == 'PASS'
#         END

#         Page Should Contain Element  ${location}

#     END

Check Should Not Be Selected Checkbox :
    [Arguments]  ${loc_checkbox}

    ${status}	${value} =	Run Keyword And Ignore Error  Checkbox Should Not Be Selected  ${loc_checkbox}
    Run Keyword If	'${status}' == 'FAIL'	Unselect Checkbox  ${loc_checkbox}
    # Wait Loading screen Not Visible


Validate Column Grid view :  
    [Arguments]   ${listData}  ${class}

    ${Length}    Get Length   ${listData}
    FOR  ${i}  IN RANGE  ${Length}

        ${localor}  Set Variable  ${listData[${i}]}
        ${localor_xpath}  Set Variable   //th[@class='${class}'][contains(.,'${localor}')]
        Wait Until Element Is Visible  ${localor_xpath}    60s
        Element Should Be Visible  ${localor_xpath}    60s   

    END

# Step login and Select Feature ENGINEER Account

#     Open web and user login :   ${url_mycorporate}  ${User_chanawam}
#     Select Menu :  ${Menu Contact Management}
#     Select Menu :  ${Menu Manage Contact}
#     Search Account :  ${AccountName}
#     Wait Until Element and Should Be Visible  ${Show Search Account} 
#     # Click Menu Quick
#     Click Element :  ${MC_Edit}
#     Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}

Step login and Select Feature ENGINEER NONMOBILE
    Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    Select Menu :  ${Menu Contact Management}
    Select Menu :  ${Menu Manage Contact}
    Search Account :  ${AccountName}
    Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Menu Quick
    Click Element :  ${MC_Edit}    
    Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_NON_MOBILE}

Check Contact In List Contact Information
    ${status}	${value} =	Run Keyword And Ignore Error	Wait Until Element Is Visible  ${Account_SearchAddContact3}  2s
    Run Keyword If	'${status}' == 'PASS'	Click Confirm Delect
    Wait Loading Not Visible

Click Confirm Delect 
    Click Element  ${btn_delete_accListContactInformation_row1}
    Click Element :  ${popup_Confirm_btn}

# Login WEB Select SubMenu DBDProflie And Verify Panel Search DBDProfile :
#     [Arguments]   ${url_mycorporate}  ${User_name}
#     Open Browser Chrome  ${url_mycorporate}
#     Login to mycorporate :  ${User_name}
#     Select Menu :  ${Menu_DBD}
#     Select Menu :  ${SubMenu_DBDProflie}
#     Wait Until Element and Should Be Visible  ${SearchPanel_DBDProfile}    ##verify show panel search account.

Check status button Masking :
    [Arguments]   ${locButton}  ${valueTest}
    # Click Element :  ${locButton}     # Status MASK
    ${status}	${value} =	Run Keyword And Ignore Error  Get Text And Should Be True :  ${locButton}  ${valueTest}
    Run Keyword If	'${status}' == 'FAIL'	Sleep  0.5s
    Run Keyword If	'${status}' == 'FAIL'	Get Text And Should Be True :  ${locButton}  ${valueTest}





        