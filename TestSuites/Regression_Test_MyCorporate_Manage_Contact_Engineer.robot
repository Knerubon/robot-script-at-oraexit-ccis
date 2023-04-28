*** Settings ***
Metadata         Version 1.0.0
Resource        ../../taas-at-fine-esd-ccis/Resources/Repository/MyCorporate_Common_Repository.robot
Resource        ../../taas-at-fine-esd-ccis/Resources/Variables/MyCorporate_Common_TestData.robot
Resource        ../../taas-at-fine-esd-ccis/Resources/Variables/MyCorporate_Common_Variables.robot
Resource        ../../taas-at-fine-esd-ccis/Resources/Keywords/MyCorporate_Common_Keywords.robot
# Test Teardown       Close All Browsers

*** Test Cases ***

ManageContactEngineer_tanak13092022_001
        [Tags]      tanak13092022_001
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. เข้าใช้งานที่ URL: https://test-mycorporate.ais.co.th/Portal/Employee
        ...     2. กรอก Username : chanawam
        ...     3. กรอก Password : chanawam
        ...     4. ทำเครื่องหมาย "☑" บน Google reCAPTCHA
        ...     5. คลิกปุ่ม ตกลง
        ...     6. เลือกเมนูด้านซ้าย "Contact Management"
        ...     7. เลือกเมนูย่อยเป็น "Manage Contact"  ${\n}

        ...     expected_result_udf        
        ...     ตรวจสอบสิทธิ์การเข้าใช้งานหน้าจอ 
        ...      
        ...     Expected Result
        ...     -> แสดงหน้าจอ Search Account 

    Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    Select Menu :  ${Menu Contact Management}
    Select Menu :  ${Menu Manage Contact}
    #------------------------------------------------------------------------------
    Wait Until Element and Should Be Visible  ${_SearchAccount}
    Capture Page Screenshot  

ManageContactEngineer_tanak13092022_002
        [Tags]      tanak13092022_002
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...      ${\n}

        ...     expected_result_udf        
        ...     การแสดงผลหน้าจอ Search Account 
 
        ...     Expected Result
        ...     -> แสดงส่วนต่างๆ ดังนี้
        ...          - Textbox สำหรับ Search
        ...          - ปุ่ม Search
        ...          - ส่วนของ Grid view 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    #------------------------------------------------------------------------------
    Validate List Data And Should Be Visible :  ${list_element_Search}        
    Capture Page Screenshot 

ManageContactEngineer_tanak13092022_003
        [Tags]      tanak13092022_003
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Search Account
        ...     - การทำงานของปุ่ม Search
        ...       กรณี พบข้อมูลที่ค้นหา 
        ...      
        ...     Expected Result
        ...     -> แสดงผลการค้นหาที่ Grid view 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    #------------------------------------------------------------------------------
    Search Account :  ${AccountName}
    Wait Until Element and Should Be Visible  ${Show Search Account} 
    Click Menu Quick
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_004
        [Tags]      tanak13092022_004
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...      ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Search Account
        ...     - ส่วนของ Grid view
             
        ...     Expected Result
        ...     -> แสดง Column ต่างๆ ดังนี้
        ...          - Account Number
        ...          - Account Name
        ...          - Sale Rep (AM)
        ...          - BC Name (AM)
        ...          - Sale Rep (MST)
        ...          - BC Name (MST)
        ...          - Contact
        ...          - Account Info  
        ...          - Icon สำหรับ Edit **หากมี Contact ที่อยู่ภายใต้ Account นั้น จะแสดง Icon

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    #------------------------------------------------------------------------------
    Validate Column Grid view :  ${list_GridViewColumn}  ${class_GridViewColumn}
    Wait Until Element and Should Be Visible  ${MC_Edit}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_005
        [Tags]      tanak13092022_005
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...      ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Search Account :: ส่วนของ Grid view
        ...     - Column :: Contact
        ...        
        ...     Expected Result
        ...     -> หากมี Contact ที่อยู่ภายใต้ Account นั้น จะแสดง Icon
        ...     - หากไม่มี Contact ที่อยู่ภายใต้ Account นั้น จะไม่แสดง Icon 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    #------------------------------------------------------------------------------
    Clear Element Text  ${MCinput Search}
    Search Account :  ${NoAccountName}   
    Wait Until Element and Should Be Visible  ${No data available} 
    Click Menu Quick
    Wait Until Element Is Not Visible 	 ${MC_Edit}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_006
        [Tags]      tanak13092022_006
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม View ที่ Column : Account Info.  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Search Account :: ส่วนของ Grid view
        ...     - Column :: Account Info
              
        ...     Expected Result
        ...     -> แสดง Icon สำหรับ View เมื่อคลิกที่ Icon จะแสดง Popup 
        ...          - Topic :: Account Information
        ...          - Message :: Category  > ดึงข้อมูลจาก ccis_tbl_lov
        ...                       Sub Category > ดึงข้อมูลจาก ccis_tbl_lov
        ...                       Segment > ดึงข้อมูลจาก ccis_tbl_account.segment
        ...          - Button :: ปิด 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    #------------------------------------------------------------------------------
    Clear Element Text  ${MCinput Search}
    Search Account :  ${AccountName}   
    Wait Until Element and Should Be Visible  ${Show Search Account} 
    Click Menu Quick
    Click Element :  ${View Account Info}
    Validate List Data And Should Be Visible :  ${list_Popup Account Information}
    Click Element :  ${InformationBtn_close}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_007
        [Tags]      tanak13092022_007
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Search Account :: ส่วนของ Grid view
        ...     - การทำงานของ Icon สำหรับ Edit
        ...       
        ...     Expected Result
        ...     -> Redirect ไปที่หน้าจอ Contact List 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Menu Quick
    #------------------------------------------------------------------------------
    Click Element :  ${MC_Edit}
    Wait Until Element and Should Be Visible  ${panelBody_ContactList}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_008
        [Tags]      tanak13092022_008
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     ${\n}

        ...     expected_result_udf        
        ...     การแสดงผลหน้าจอ Contact List 
        ...      
        ...     Expected Result
        ...     -> แสดงส่วนต่างๆ ดังนี้
        ...          - Panel แสดง Account Information
        ...          - Panel เลือก Feature 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Menu Quick
    # Click Element :  ${MC_Edit}
    #------------------------------------------------------------------------------
    Wait Until Element and Should Be Visible  ${Panel Account Information}
    Wait Until Element and Should Be Visible  ${Panel Feature}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_009
        [Tags]      tanak13092022_009
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. Login ด้วย User/Pass : "chanawam/chanawam" 
        ...     2. เลือกเมนูด้านซ้าย "Contact Management"
        ...     3. เลือกเมนูย่อยเป็น "Manage Contact"
        ...     4. ระบุ Account : "แสตนฟอร์ด"
        ...     5. คลิกปุ่ม Search
        ...     6. คลิกปุ่ม Edit   ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List
        ...     - Panel แสดง Account Information
        ...      
        ...     Expected Result
        ...     -> ดึงข้อมูลจาก Row ที่เลือกมาจากหน้าจอ Search Account มาแสดง
        ...     - Account No. 
        ...     - Account Name 
        ...     - Sale Rep (AM) 
        ...     - BC Name (AM) 
        ...     - Sale Rep (MST) 
        ...     - BC Name (MST) 
        ...     - Category 
        ...     - Sub Category 
        ...     - Segment 
        ...     - ปุ่ม Back 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Menu Quick
    # Click Element :  ${MC_Edit}
    #------------------------------------------------------------------------------
    Validate List Data And Should Be Visible :  ${list_Panel_Account_Information}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_010
        [Tags]      tanak13092022_010
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. คลิกปุ่ม Back ที่หน้า Contact list  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Panel แสดง Account Information
        ...     - การทำงานของปุ่ม Back
    
        ...     Expected Result
        ...     -> Redirect กลับไปที่หน้าจอ Search Account
        ...     - แสดงผลการค้นหาล่าสุด 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Menu Quick
    # Click Element :  ${MC_Edit}
    #------------------------------------------------------------------------------
    Click Element :   ${Account_buttonBack}
    Wait Until Element and Should Be Visible  ${Show Search Account}
    Get Value And Should Be True :  ${MCinput Search}  ${AccountName}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_011
        [Tags]      tanak13092022_011
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     --- กรณี User มีมากกว่า 1 Role ---
        ...     1. Login ด้วย User/Pass : "chanawam/chanawam" 
        ...     2. เลือกเมนูด้านซ้าย "Contact Management"
        ...     3. เลือกเมนูย่อยเป็น "Manage Contact"
        ...     4. ระบุ Account : "แสตนฟอร์ด"
        ...     5. คลิกปุ่ม Search
        ...     6. คลิกปุ่ม Edit
        ...     7. ตรวจสอบ Panel : Feature
        ...     
        ...     --- กรณี User มีเพียง Role Engineer ---
        ...     1. Login ด้วย User/Pass : "pattawee/pattawee"
        ...     2. เลือกเมนูด้านซ้าย "Contact Management"
        ...     3. เลือกเมนูย่อยเป็น "Manage Contact"
        ...     4. ระบุ Account : "แสตนฟอร์ด"
        ...     5. คลิกปุ่ม Search
        ...     6. คลิกปุ่ม Edit 
        ...     7. ตรวจสอบ Panel : Feature  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List
        ...     - Panel เลือก Feature

        ...     Expected Result
        ...     -> เป็น Dropdown list สำหรับเลือก Feature
        ...     - กรณี User ที่ Login เข้ามา มีเพียง Role เดียว ระบบจะ Default Feature ของระบบนั้นให้
        ...     - กรณี User ที่ Login เข้ามา มีหลาย Role ระบบจะแสดงค่าเริ่มต้นเป็น "--- Please Select ---"
        ...     - เมื่อเลือก Feature แล้ว ระบบจะเปิด Panel แสดง Contact List ของ Feature นั้นที่ด้านล่าง
        ...     - เมื่อเลือก Feature จะแสดงปุ่ม Eyeview ที่ Account Information

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Menu Quick
    #---------------------------------------------------------------------------------------
    Click Element :  ${MC_Edit}
    Get Selected List Labels And Should Be True :  ${loc_SelectFeature}  ${valuePleaseSelect}
    Capture Page Screenshot
    Click Logout
    ##  Login User 2 
    Login to mycorporate :  ${User_pattawee}
    Select Menu :  ${Menu Contact Management}
    Select Menu :  ${Menu Manage Contact}
    Search Account :  ${AccountName}
    Wait Until Element and Should Be Visible  ${Show Search Account} 
    Click Element :  ${MC_Edit}
    Wait Loading screen Is Visible and Not Visible
    Get Selected List Labels And Should Be True :  ${loc_SelectFeature}  ${valueRemarkNote}
    Capture Page Screenshot
    Close Window

ManageContactEngineer_tanak13092022_012
        [Tags]      tanak13092022_012
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Account"   ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List
        ...     กรณี เลือก Feature = Engineer , View = Account
        ...      
        ...     Expected Result
        ...     -> แสดง Panel : Manage Detail Mobile/Non Mobile
        ...     -> แสดง Panel : Contact List
    
    Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    Select Menu :  ${Menu Contact Management}
    Select Menu :  ${Menu Manage Contact}
    Search Account :  ${AccountName}
    Wait Until Element and Should Be Visible  ${Show Search Account} 
    Click Element :  ${MC_Edit}
    Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    Wait Until Element and Should Be Visible  ${Panel_Manage_Mobile}
    Wait Until Element and Should Be Visible  ${Panel_ContactList}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_013
        [Tags]      tanak13092022_013
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Account"
        ...     6. คลิกปุ่ม View ที่ Panel : Manage Detail Mobile/Non Mobile
        ...     7. คลิกปุ่ม ปิด   ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List
        ...     - View Panel : Manage Detail Mobile/Non Mobile
    
        ...     Expected Result
        ...     -> เปิด pop-up สำหรับแสดงข้อมูล Non Mobile โดยมีส่วนต่างๆ ดังนี้
        ...           - Group Email :
        ...           - Default Email Template :
        ...           - Suggest Condition By :
        ...           - ต้องแจ้งล่วงหน้า :
        ...           - วันทำการ :
        ...           - เวลาทำการ :
        ...           - Number for sms alert :
        ...           - Monthly report :
        ...           - Monthly report (Email) :
        ...           - Portal :
        ...           - Response Hour :
        ...           - Number for Special :
        ...           - Aftersale Service :
        ...           - Start Time Activity :
        ...           - Finish Time Activity :
        ...           - Start Onsite :
        ...           - End Onsite :
        ...           - Date do not Activity :
        ...           - Day do not activity :
        ...           - Report Inform Activity :
        ...           - Date Inform Activity Report :
        ...           - Day Inform Activity Report :
        ...           - Fault Update Condition :
        ...           - ช่องทาง Update Fault :
        ...           - Period Days :
        ...           - Impact Time :
        ...           - Send Monthly Day :
        ...           - Period time Report :
        ...           - NOC :
        ...           - SLA :
        ...           - First Response Time :
        ...           - Follow up Time :
        ...           - Close Response By :
        ...           - First Response By :
        ...           - Follow up Response By :
        ...           - Start Send Activity Report :
        ...           - Finish Send Activity Report :
        ...           - Report Complete/Cancel Activity :
        ...           - Report Complete Activity :
        ...           - Time Send Complete Activity :
        ...           - Confirm Activity (NOC/SI) :
        ...           - Vendor/SI Name :
        ...           - Vendor/SI email :
        ...           - Vendor/SI Contact :
        ...     - ปุ่ม ปิด สำหรับปิด pop - up

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${Panel_View_Account}
    Validate Detail Mobile or Non Mobile
    Click Element :  ${Button_Close}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_014
        [Tags]      tanak13092022_014
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Account"
        ...     6. คลิกปุ่ม Edit ที่ Panel : Manage Detail Mobile/Non Mobile
        ...     7. แก้ไขข้อมูล Detail Mobile/Non Mobile ที่ต้องการ   ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List
        ...     - Edit Panel : Manage Detail Mobile/Non Mobile
        ...      
        ...     Expected Result
        ...     -> เปิด pop-up สำหรับแก้ไขข้อมูล Non Mobile โดยมีส่วนต่างๆ ดังนี้
        ...           - Group Email :
        ...           - Default Email Template :
        ...           - Suggest Condition By :
        ...           - ต้องแจ้งล่วงหน้า :
        ...           - วันทำการ :
        ...           - เวลาทำการ :
        ...           - Number for sms alert :
        ...           - Monthly report :
        ...           - Monthly report (Email) :
        ...           - Portal :
        ...           - Response Hour :
        ...           - Number for Special :
        ...           - Aftersale Service :
        ...           - Start Time Activity :
        ...           - Finish Time Activity :
        ...           - Start Onsite :
        ...           - End Onsite :
        ...           - Date do not Activity :
        ...           - Day do not activity :
        ...           - Report Inform Activity :
        ...           - Date Inform Activity Report :
        ...           - Day Inform Activity Report :
        ...           - Fault Update Condition :
        ...           - ช่องทาง Update Fault :
        ...           - Period Days :
        ...           - Impact Time :
        ...           - Send Monthly Day :
        ...           - Period time Report :
        ...           - NOC :
        ...           - SLA :
        ...           - First Response Time :
        ...           - Follow up Time :
        ...           - Close Response By :
        ...           - First Response By :
        ...           - Follow up Response By :
        ...           - Start Send Activity Report :
        ...           - Finish Send Activity Report :
        ...           - Report Complete/Cancel Activity :
        ...           - Report Complete Activity :
        ...           - Time Send Complete Activity :
        ...           - Confirm Activity (NOC/SI) :
        ...           - Vendor/SI Name :
        ...           - Vendor/SI email :
        ...           - Vendor/SI Contact :
        ...     - ปุ่ม ปิด และ บันทึก

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${EditAccountDetailMobileBTN}
    Validate Data Edit Account Detail Mobile Or Non Mobile
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_015
        [Tags]      tanak13092022_015
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Account"
        ...     6. คลิกปุ่ม Edit ที่ Panel : Manage Detail Mobile/Non Mobile
        ...     7. แก้ไขข้อมูล Detail Mobile/Non Mobile ที่ต้องการ
        ...     8. คลิกปุ่ม บันทึก    ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List
        ...     - Edit Panel : Manage Detail Mobile/Non Mobile
        ...       การทำงานของปุ่ม บันทึก
        ...      
        ...     Expected Result
        ...     -> บันทึกข้อมูลและปิด Pop up
        ...     -> แสดงหน้า Contact 

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${EditAccountDetailMobileBTN}
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${select_LINE}
    Click Element :  ${SaveAccountDetailMobile}
    Wait Loading Not Visible
    Wait Until Element and Should Be Visible  ${EditAccountDetailMobileBTN}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_016
        [Tags]      tanak13092022_016
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. คลิกปุ่ม View ที่ Eyeview    ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Feature - Engineer
        ...     - การทำงานของปุ่ม Eyeview :: "VIEW"
 
        ...     Expected Result
        ...     -> เมื่อเข้าสู่หน้าจอ จะ Default เป็น "VIEW" คือการ Mask ข้อมูลต่างๆ 
        ...     - เมื่อคลิกปุ่ม "VIEW" ชื่อปุ่มจะเปลี่ยนเป็น "MASK"
        ...     - แสดงข้อมูลต่างๆ ที่เคยถูก Mask ไว้เป็นรูปแบบ Clear text คือแสดงข้อมูลเป็นข้อมูลจริงทั้งหมด
        ...     - ดึง Timer สำหรับสำหรับหน่วงเวลาการแสดงผลแบบ Clear text ตาม Config 
        ...          - เมื่อครบช่วงเวลาแล้ว ปุ่ม "MASK" จะเปลี่ยนเป็น "VIEW"
        ...          - เมื่อครบช่วงเวลาแล้ว ข้อมูลจะกลับไปเป็นรูปแบบ Mask  

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Input Data :  ${loc_contactSearch}  ${ContactSearch}
    Validate When Click Button View
    Validate When Timer Is Mask
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_017
        [Tags]      tanak13092022_017
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. คลิกปุ่ม View ที่ Eyeview    ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Feature - Engineer
        ...     - การทำงานของปุ่ม Eyeview :: "MASK"
        ...       กรณี คลิกปุ่มก่อนหมดเวลา 
        ...      
        ...     Expected Result
        ...     -> เมื่อคลิกปุ่ม "MASK" ชื่อปุ่มจะเปลี่ยนเป็น "VIEW"
        ...     - ข้อมูลจะกลับไปเป็นรูปแบบ Mask 
        ...     - Clear Timer นับเวลาการ Mask 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Input Data :  ${loc_contactSearch}  ${ContactSearch}
    Validate Click Button MASK Before out of time 
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_018
        [Tags]      tanak13092022_018
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search Panel : Contact list   ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Feature - Engineer
        ...     - การทำงานของปุ่ม Eyeview :: "VIEW"
 
        ...     Expected Result
        ...         Expected Result
        ...         -> เป็นการ Search ข้อมูลภายในตาราง
        ...         - กรณี มีข้อมูลที่ถูก Mask จะไม่สามารถค้นหาข้อมูลในส่วนนั้นได้ 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Input Data :  ${loc_contactSearch}  ${ContactSearch}
    Validate Data MASK In Search :  ${list_VerifyMaskingBTN_MASK}          # Data Mask can't show detail
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_019
        [Tags]      tanak13092022_019
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...        ${\n}

        ...     expected_result_udf        
        ...          หน้าจอ Contact List :: Feature - Engineer
        ...          - Column :: First Name (TH) และ Last Name (TH)
 
        ...          Expected Result
        ...          -> 
        ...          - ทำการ Mask ข้อมูลที่ฟิลด์ Last Name (TH) แสดงผลเป็น xxxxx  
 
    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Input Data :  ${loc_contactSearch}  ${ContactSearch}
    Validate When Click Button Status VIEW :  ${list_VerifyMaskingBTN_VIEW}
    Log   Last Name (TH): ${list[${0}]}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_020
        [Tags]      tanak13092022_020
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...        ${\n}

        ...     expected_result_udf        
        ...          หน้าจอ Contact List :: Feature - Engineer
        ...          - Column :: First Name (EN) และ Last Name (EN)
  
        ...          Expected Result
        ...          -> 
        ...          - ทำการ Mask ข้อมูลที่ฟิลด์ Last Name (EN) แสดงผลเป็น xxxxx 
 
    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Input Data :  ${loc_contactSearch}  ${ContactSearch}
    #----------------------------------------------------------------------------------------------------
    Validate When Click Button Status VIEW :  ${list_VerifyMaskingBTN_VIEW}
    Log   Last Name (EN): ${list[${1}]}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_021
        [Tags]      tanak13092022_021
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...        ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Feature - Engineer
        ...     - Column :: ID Card/Passport
        ...      
        ...      
        ...     Expected Result
        ...     -> 
        ...     - ทำการ Mask ข้อมูล โดยแสดงข้อมูล 4 ตัวสุดท้าย เช่น xxxxxx1033 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Input Data :  ${loc_contactSearch}  ${ContactSearch}
    #----------------------------------------------------------------------------------------------------
    Validate When Click Button Status VIEW :  ${list_VerifyMaskingBTN_VIEW}
    Verify Length Character :  ${list[${2}]}  x  ${4}  ${-1}
    Log   ID Card/Passport : ${list[${2}]}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_022
        [Tags]      tanak13092022_022
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...        ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Feature - Engineer
        ...     - Column :: Email

        ...     Expected Result
        ...     -> 
        ...     - ทำการ Mask ข้อมูล โดยแสดงข้อมูล 3 ตัวแรก เช่น thaxxxxx@xxxxx.xxx
        ...     - กรณี มี Email มากกว่า 1 รายการ ให้คั่นด้วย ;  

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Input Data :  ${loc_contactSearch}  ${ContactSearch}
    #----------------------------------------------------------------------------------------------------
    Input Contact And Search In Contact List :  ${ContactSearch}
    Validate When Click Button Status VIEW :  ${list_VerifyMaskingBTN_VIEW}
    Verify Length Character :  ${list[${3}]}  x  ${3}  ${0}
    Log   Email : ${list[${3}]}
    Capture Page Screenshot
    
ManageContactEngineer_tanak13092022_023
        [Tags]      tanak13092022_023
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...        ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Feature - Engineer
        ...     - Column :: Mobile No. 1 และ Mobile No. 2
   
        ...     Expected Result
        ...     -> 
        ...     - ทำการ Mask ข้อมูล โดยแสดงข้อมูล 3 ตัวแรก และ 4 ตัวสุดท้าย เช่น 089xxx1072 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Input Data :  ${loc_contactSearch}  ${ContactSearch}
    #----------------------------------------------------------------------------------------------------
    Validate When Click Button Status VIEW :  ${list_VerifyMaskingBTN_VIEW}
    # Mobile1
    Verify Length Character :  ${list[${4}]}  x  ${3}  ${0}       # Front 3 number  **inputData  characterSplit  numberCount  position
    Verify Length Character :  ${list[${4}]}  x  ${4}  ${-1}      # Back 4 number   **inputData  characterSplit  numberCount  position
    Log  Mobile No. 1 : ${list[${4}]}
    Capture Page Screenshot
    # Mobile2
    Verify Length Character :  ${list[${5}]}  x  ${3}  ${0}       # Front 3 number  **inputData  characterSplit  numberCount  position
    Verify Length Character :  ${list[${5}]}  x  ${4}  ${-1}      # Back 4 number   **inputData  characterSplit  numberCount  position
    Log  Mobile No. 2 : ${list[${5}]}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_024
        [Tags]      tanak13092022_024
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...        ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Feature - Engineer
        ...     - Column :: Action
 
        ...     Expected Result
        ...     -> แสดง Icon สำหรับ Edit และ Delete
        ...     - เมื่อคลิก Icon สำหรับ Edit จะ Redirect ไปยังหน้าจอ Edit Contact

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Input Data :  ${loc_contactSearch}  ${ContactSearch}
    #----------------------------------------------------------------------------------------------------
    Validate Column Action
    Validate Panel Edit Contact for Column Action
    Capture Page Screenshot
    Click Element :  ${_Panel_ContactBTN_Back}
    Wait Loading Not Visible

ManageContactEngineer_tanak13092022_025
        [Tags]      tanak13092022_025
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. เลือก Contact ที่ต้องการ
        ...     2. คลิกปุ่ม Delete   ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Feature - Engineer
        ...     - การทำงานของ Icon สำหรับ Delete

        ...     Expected Result
        ...     -> แสดง Popup แจ้งเตือน
        ...          - Topic :: ยืนยันการลบ
        ...          - Message :: "คุณต้องการลบข้อมูล Contact ออกจากระบบหรือไม่ ?"
        ...          - Button :: ยกเลิก และ ยืนยัน 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Input Data :  ${loc_contactSearch}  ${UsertestDel}
    Wait Until Element and Should Be Visible  ${btnDel_contactListBodyTr1}
    Click Execute Javascript :  ${btnDel_contactListBodyTr1}
    Validate List Data And Should Be Visible :  ${list_Element_DelContact}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_026
        [Tags]      tanak13092022_026
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. เลือก Contact ที่ต้องการ
        ...     2. คลิกปุ่ม Delete
        ...     3. คลิกปุ่ม ยกเลิก ที่ Pop up ยืนยัน  ${\n}

        ...     expected_result_udf        
        ...     Popup ยืนยันการลบ
        ...     - การทำงานของปุ่ม ยกเลิก

        ...     Expected Result
        ...     -> ปิด Popup แจ้งเตือน
        ...     - ไม่ทำการใดๆ กับข้อมูล 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Input Data :  ${loc_contactSearch}  ${UsertestDel}
    # Scroll Move custom  500
    # Wait Until Element and Should Be Visible  ${btnDel_contactListBodyTr1}
    # Click Execute Javascript :  ${btnDel_contactListBodyTr1}
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${btnCancel_Confirm_Delete}
    Clear Element Text  ${loc_contactSearch}
    Input Data :  ${loc_contactSearch}  ${UsertestDel}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_027    
        [Tags]      tanak13092022_027
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. เลือก Contact ที่ต้องการ
        ...     2. คลิกปุ่ม Delete
        ...     3. คลิกปุ่ม ยืนยัน ที่ Pop up ยืนยัน  ${\n}

        ...     expected_result_udf        
        ...     Popup ยืนยันการลบ
        ...     - การทำงานของปุ่ม ยืนยัน

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    ## Step : Back To Search Account 
    Click Element :  ${Account_buttonBack}
    Wait Until Element Is Visible 	 ${MCinput Search}   60s
    Clear Element Text 	 ${MCinput Search}
    Search Account :  ${AccountNamePTT} 
    Wait Until Element Is Visible 	 ${Account PTT}   60s
    Click Element :  ${MC_Edit}
    Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    ## Step : Create
    Create Data Test Add Contact for Account :  ${contact_nameSandee}
    Check Contact was found in the system
    ## Step : Delete
    Validate Feature Delete Contact :  ${contact_nameSandee}
    Validate Data Delete Contact :  ${contact_nameSandee}
    Capture Page Screenshot
    Click Element :  ${Account_buttonBack}
    Clear Element Text 	 ${MCinput Search}
    Close Window

ManageContactEngineer_tanak13092022_028
        [Tags]      tanak13092022_028
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Feature - Engineer
        ...     - การทำงานของปุ่ม Add Contact
    
        ...     Expected Result
        ...     -> แสดง Popup สำหรับ Search Contact 

    Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    Select Menu :  ${Menu Contact Management}
    Select Menu :  ${Menu Manage Contact}
    Search Account :  ${AccountName}
    Wait Until Element and Should Be Visible  ${Show Search Account} 
    Click Element :  ${MC_Edit}
    Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    Wait Until Element and Should Be Visible  ${Popup_SEARCH_VALUE}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_029
        [Tags]      tanak13092022_029
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     ${\n}

        ...     expected_result_udf        
        ...     การแสดงผลของ Popup Search Contact 
        ...      
        ...     Expected Result
        ...     -> Textbox สำหรับ Search
        ...     - ปุ่ม Search
        ...     - ปุ่ม Add Contact
        ...     - ส่วนของ Contact result
        ...     - ปุ่ม ปิด
        ...     - ปุ่ม ยืนยัน 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    #----------------------------------------------------------------------------------------------------
    Validate List Data And Should Be Visible :  ${list_elementAddContact} 
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_030
        [Tags]      tanak13092022_030
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. ระบุ Keyword : "สมภพ"
        ...     3. คลิกปุ่ม Search  ${\n}

        ...     expected_result_udf        
        ...     Popup Search Contact
        ...     - การทำงานของปุ่ม Search
 
        ...     Expected Result
        ...     -> แสดงผลการค้นหาตาม Keyword ที่ระบุ
        ...     - แสดงผลการค้นหาที่ Contact result ด้านล่าง 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    #----------------------------------------------------------------------------------------------------
    Search Contact :  ${Account_SearchAddContact}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_031
        [Tags]      tanak13092022_031
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     ${\n}

        ...     expected_result_udf        
        ...     Popup Search Contact
        ...     - การแสดงผลของ Contact result

        ...     Expected Result
        ...     -> แสดงเป็น List สำหรับเลือกข้อมูล Contact
        ...     - สามารถเลือก Contact ได้เพียงรายการเดียวเท่านั้น > 
        ...     - แสดงส่วนต่างๆ ดังนี้
        ...          - Contact Name (TH)
        ...          - Contact Name (EN)
        ...          - ID Type
        ...          - ID Number
        ...          - Mobile No. 1
        ...          - Mobile No. 2
        ...          - Home No.
        ...          - Office No.

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Search Contact :  ${Account_SearchAddContact}
    #----------------------------------------------------------------------------------------------------
    Validate List Data And Should Be Visible :  ${listField_ResultSearch_AddContact}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_032
        [Tags]      tanak13092022_032
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. คลิกปุ่ม ปิด ที่ Pop up  ${\n}

        ...     expected_result_udf        
        ...     Popup Search Contact
        ...     - การทำงานของปุ่ม ปิด
   
        ...     Expected Result
        ...     -> ปิด Popup Search Contact 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}         # Click Add Contact
    # Search Contact :  ${Account_SearchAddContact}
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${BtnClose_INAddContact}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_033
        [Tags]      tanak13092022_033
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. ระบุ Keyword : "ปิยะนุช"
        ...     3. คลิกปุ่ม Search
        ...     4. เลือก Contact ที่ต้องการ
        ...     5. คลิกปุ่ม บันทึก ที่ Pop up  ${\n}

        ...     expected_result_udf        
        ...     Popup Search Contact
        ...     - การทำงานของปุ่ม บันทึก
   
        ...     Expected Result
        ...     -> Redirect ไปที่หน้าจอ Add Contact พร้อมกับดึงข้อมูล Contact ที่เลือกไปแสดง 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${ContactPanelAddBtn}         # Click Add Contact
    Search Contact :  ${Account_SearchAddContact2}
    Click Element :  ${AddContactList_row1} 
    Click Element :  ${SaveSelectContact}
    Capture Page Screenshot
    ## Prepar Data for test -----------------------------------------------------------------------------
    Click Element :  ${_Panel_ContactBTN_Back}
    Delete Account Contact :  ${Account_SearchAddContact2}   # Step : Delete for data test
    Wait Loading Not Visible

ManageContactEngineer_tanak13092022_034
        [Tags]      tanak13092022_034
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. คลิกปุ่ม + Add Contact ที่ Pop up  ${\n}

        ...     expected_result_udf        
        ...     Popup Search Contact
        ...     - การทำงานของปุ่ม Add Contact
             
        ...     Expected Result
        ...     -> Redirect ไปยังหน้าจอ Add Contact 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    Wait Until Element and Should Be Visible  ${_headerAddContact}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_035
        [Tags]      tanak13092022_035
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...      ${\n}

        ...     expected_result_udf        
        ...     การแสดงผลหน้าจอ Add Contact 
       
        ...     Expected Result
        ...     -> แสดงส่วนต่างๆ ดังนี้
        ...          - Panel Contact
        ...          - Panel Service Role
        ...          - Panel Contact Type
        ...          - ปุ่ม Back และ Save 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}        # Click Add Contact
    # Click Element :  ${AddNewContactBTN}          # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Validate List Data And Should Be Visible :  ${list_PanelAddContactDetail}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_036
        [Tags]      tanak13092022_036
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...      ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact
        ...     - Panel Contact 
        ...      
        ...     Expected Result
        ...     -> แสดงส่วนต่างๆ เป็น Textbox สำหรับระบุข้อมูล ดังนี้
        ...          - Title* 
        ...          - Title Other
        ...          - First Name (TH)*
        ...          - Last Name (TH)* 
        ...          - First Name (EN)* 
        ...          - Last Name (EN)*
        ...          - Birthdate
        ...          - ID Type 
        ...          - ID Number
        ...          - Email 
        ...          - Mobile No. 1*
        ...          - Mobile No. 2 
        ...          - Office No.*
        ...          - Home No.*
        ...          - Fax No.
        ...          - Contact Type*
        ...          - SKA Contact
        ...          - Contact Priority
        ...          - Password 
        ...          - Position 
        ...          - Department  

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}        # Click Add Contact
    # Click Element :  ${AddNewContactBTN}          # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Validate List Data And Should Be Visible :  ${List_AddCon_PanelContact}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_037
        [Tags]      tanak13092022_037
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Dropdown lsit สำหรับเลือก Title* 
              
        ...     Expected Result
        ...     -> - เป็น Require field
        ...     - แสดงค่าเริ่มต้นเป็น "คุณ"
        ...     - เป็น Dropdown list สำหรับเลือก ประกอบด้วย
        ...          - นาย
        ...          - นาง
        ...          - นางสาว
        ...          - Mr.
        ...          - Mrs.
        ...          - Miss
        ...          - Ms.
        ...          - Other 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Get Selected List Labels And Should Be True :  ${AddCon_Element_Title}  ${DropdownlistTitleDefault} 
    Get Selected List Labels And Should For Data list :  ${AddCon_Element_Title}  ${DropdownlistTitle}
    Click Element :  ${AddCon_Element_Title}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_038
        [Tags]      tanak13092022_038
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. เลือก Title Other   ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Title Other 
        ...      
        ...     Expected Result
        ...     -> กรณี เลือก Title เป็น "Other" จะเปิดช่องสำหรับระบุข้อมูล
        ...     - เป็น Require field 
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify Case Select Title is Other And Can Write In Textbox Title Other
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_039
        [Tags]      tanak13092022_039
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ First Name (TH)  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ First Name (TH)*

        ...     Expected Result
        ...     -> เป็น Require field
        ...     - สามารถระบุค่าได้ 255 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_FirstNameTH}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_FirstNameTH}  ${255}
    Capture Page Screenshot
    # Prepra data for test ------------------------------------------------------------------------------------
    Clear Element Text 	 ${AddCon_Contact_FirstNameTH}
    Press Keys  ${AddCon_Contact_FirstNameTH}  \DELETE

ManageContactEngineer_tanak13092022_040
        [Tags]      tanak13092022_040
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Last Name (TH)  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Last Name (TH)*

        ...     Expected Result
        ...     -> เป็น Require field
        ...     - สามารถระบุค่าได้ 255 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_LastNameTH}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_LastNameTH}  ${255}
    Capture Page Screenshot
    # Prepra data for test ------------------------------------------------------------------------------------
    Clear Element Text 	 ${AddCon_Contact_LastNameTH}
    Press Keys  ${AddCon_Contact_FirstNameTH}  \DELETE

ManageContactEngineer_tanak13092022_041
        [Tags]      tanak13092022_041
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ First Name (EN)  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ First Name (EN)*
 
        ...     Expected Result
        ...     -> เป็น Require field
        ...     - สามารถระบุค่าได้ 255 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_FirstNameEN}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_FirstNameEN}  ${255}
    Capture Page Screenshot
    # Prepra data for test ------------------------------------------------------------------------------------
    Clear Element Text 	 ${AddCon_Contact_FirstNameEN}
    Press Keys  ${AddCon_Contact_FirstNameEN}  \DELETE

ManageContactEngineer_tanak13092022_042
        [Tags]      tanak13092022_042
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Last Name (EN)  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Last Name (EN)*
  
        ...     Expected Result
        ...     -> เป็น Require field
        ...     - สามารถระบุค่าได้ 255 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_LastNameEN}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_LastNameEN}  ${255}
    Capture Page Screenshot
    Clear Element Text 	 ${AddCon_Contact_LastNameEN}
    Press Keys  ${AddCon_Contact_LastNameEN}  \DELETE

ManageContactEngineer_tanak13092022_043
        [Tags]      tanak13092022_043
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ ID Type ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ ID Type
  
        ...     Expected Result
        ...     -> แสดงค่าเริ่มต้นเป็นค่าว่าง

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Get Selected List Labels And Should Be True :  ${AddCon_Contact_IDType}  ${EMPTY}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_044
        [Tags]      tanak13092022_044
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ ID Number  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ ID Number

        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 50 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_IDNumber}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_IDNumber}  ${50}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_045
        [Tags]      tanak13092022_045
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ Birthdate  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับเลือก Birthdate
    
        ...     Expected Result
        ...     -> เมื่อคลิก จะแสดงเป็น Date Picker สำหรับเลือกวันที่
        ...     - แสดงรูปแบบเป็น dd/mm/yyyy
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify Format Date
    Capture Page Screenshot
    Close Window

ManageContactEngineer_tanak13092022_046
        [Tags]      tanak13092022_046
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ Email หากมีมากกว่า 1 mail ให้ Enter หรือคั่นด้วย ; เพื่อระบุ Email ถัดไป  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Email
  
        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 255 ตัวอักษร
        ...     - ตรวจสอบรูปแบบของ Email
        ...     - สามารถกรอกได้มากกว่า 1 Email 

    Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    Select Menu :  ${Menu Contact Management}
    Select Menu :  ${Menu Manage Contact}
    Search Account :  ${AccountName}
    Wait Until Element and Should Be Visible  ${Show Search Account} 
    Click Element :  ${MC_Edit}
    Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Validate Format Mail :  ${255}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_047
        [Tags]      tanak13092022_047
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Mobile No. 1  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Mobile No. 1*

        ...     Expected Result
        ...     -> ตรวจสอบค่าที่ระบุ ต้องขึ้นต้นด้วย 08, 09, 06
        ...     - ตรวจสอบเบอร์ ต้องมีจำนวน 10 หลัก 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Validate Format Mobile :  ${AddCon_Contact_MobileNo1}  ${Err_Contact_MobileNo1}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_048
        [Tags]      tanak13092022_048
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Mobile No. 2  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Mobile No. 2*

        ...     Expected Result
        ...     -> ตรวจสอบค่าที่ระบุ ต้องขึ้นต้นด้วย 08, 09, 06
        ...     - ตรวจสอบเบอร์ ต้องมีจำนวน 10 หลัก 
    
    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Validate Format Mobile :  ${AddCon_Contact_MobileNo2}   ${Err_Contact_MobileNo2}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_049
        [Tags]      tanak13092022_049
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Office No.  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Office No.*

        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 50 ตัวอักษร 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_OfficeNo}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_OfficeNo}  ${50}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_050
        [Tags]      tanak13092022_050
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ Fax No.  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Fax No.
  
        ...     Expected Resulta
        ...     -> สามารถระบุค่าได้ 50 ตัวอักษร 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_FaxNo}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_FaxNo}  ${50}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_051
        [Tags]      tanak13092022_051
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Home No. ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Home No.*

        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 50 ตัวอักษร 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_HomeNo}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_HomeNo}  ${50}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_052
        [Tags]      tanak13092022_052
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ Position ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Position
 
        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 150 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_Position}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_Position}  ${150}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_053
        [Tags]      tanak13092022_053
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ Department ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Department

        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 150 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_Department}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_Department}  ${150}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_054
        [Tags]      tanak13092022_054
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Service Role ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact 
        ...     - Panel Service Role

        ...     Expected Result
        ...     -> ปิด Panel Contact
        ...     - เปิด Panel Service Role
        ...          - Stage
        ...          - Role
        ...          - Service
        ...          - Func. 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${AddContact_PanelServiceRole}
    Validate List Data And Should Be Visible :  ${List_ColumnServiceRole}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_055
        [Tags]      tanak13092022_055
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Service Role
        ...     3. เลือก Func. ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Service Role
        ...     - การทำงานของ Dropdown list สำหรับเลือก Func.

        ...     Expected Result
        ...     -> 
        ...     - เป็น Dropdown list สำหรับเลือก
        ...     - แสดงค่าเริ่มต้นเป็น "N/A"

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${AddContact_PanelServiceRole}
    Get Selected List Labels And Should Be True :  ${_Contact_RoleFuncID}  N/A
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_056
        [Tags]      tanak13092022_056
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact
        ...     - Panel Contact Type

        ...     Expected Result
        ...     -> ปิด Panel Service Role
        ...     - เปิด Panel Contact Type
        ...          - Contact Type*
        ...          - SKA Contact
        ...          - Contact Priority

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${_Panel_edit_contact}
    Validate List Data And Should Be Visible :  ${List_PanelContactType}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_057
        [Tags]      tanak13092022_057
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact Type
        ...     3. เลือก Contact Type${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact Type
        ...     - การทำงานของ Textbox สำหรับเลือก Contact Type 

        ...     Expected Result
        ...     -> เป็น Require field
        ...     - แสดงค่าเริ่มต้นเป็น "--- Please select ---"

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${Panel_ContactType}
    Get Selected List Labels And Should Be True :  ${AC_contactType}  ${valuePleaseSelect2}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_058
        [Tags]      tanak13092022_058
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact Type
        ...     3. เลือกหรือไม่เลือก Contact Priority  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact Type
        ...     - การทำงานของ Textbox สำหรับเลือก Contact Priority 

        ...     Expected Result
        ...     -> แสดงค่าเริ่มต้นเป็น "ไม่กำหนด Priority"

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${Panel_ContactType}
    Get Selected List Labels And Should Be True :  ${edit_contactPriority}  ${valueNoPriority}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_059
        [Tags]      tanak13092022_059
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact Type
        ...     3. ระบุหรือไม่ระบุ SKA  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact Type
        ...     - การทำงานของ Checkbox สำหรับระบุ SKA
    
        ...     Expected Result
        ...     -> เป็น Checkbox

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${Panel_ContactType}
    Wait Until Element and Should Be Visible  ${SKAContactCheckbox}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_060
        [Tags]      tanak13092022_060
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. คลิกปุ่ม Back ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact 
        ...     - การทำงานของปุ่ม Back

        ...     Expected Result
        ...     -> Redirect ไปยังหน้าจอ Contact List
        ...     - แสดงผลการค้นหาที่เคยค้นหาไว้ 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    # Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${_Panel_ContactBTN_Back}
    Wait Until Element and Should Be Visible  ${data_DESKTOP_INFO_ACCOUNT_NUMBER}
    Get Selected List Labels And Should Be True :  ${loc_SelectFeature}  Engineer
    Wait Until Element and Should Be Visible  ${tbody_contactList}
    Capture Page Screenshot
    # Close Window

ManageContactEngineer_tanak13092022_061
        [Tags]      tanak13092022_061
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. ระบุ Keyword : "ปิยะนุช"
        ...     3. คลิกปุ่ม Search
        ...     4. เลือก Contact ที่ต้องการ
        ...     5. คลิกปุ่ม บันทึก ที่ Pop up
        ...     6. ระบุข้อมูลที่ Require  > *ID Number : 2942657869589
        ...     7. คลิกปุ่ม Save  ${\n}

        ...     expected_result_udf        
         ...     หน้าจอ Add Contact
        ...     - การทำงานของปุ่ม Save
        ...       กรณี มี Contact อยู่แล้วในระบบ โดยตรวจสอบจาก 
        ...             ชื่อ + นามสกุล, Mobile No. 1, Mobile No. 2, Home No., Office No.  
        ...      
        ...     Expected Result
        ...     -> หากไม่พบข้อมูลจากเงื่อนไข บัตรประชาชน ให้ตรวจสอบจาก ชื่อ + นามสกุล, Mobile No. 1, Mobile No. 2, Home No., Office No.
        ...     - แสดง Popup แจ้งเตือน
        ...          - Topic :: แจ้งเตือน
        ...          - Message :: "เนื่องจากพบ Contact นี้อยู่ในระบบ คุณต้องการ Update Contact รายการนี้ต่อหรือไม่"
        ...          - Button :: ยกเลิก และ ยืนยัน 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    Search Contact :  ${Account_SearchAddContact2}
    Click Element :  ${AddContactList_row1}      # Select Contact
    Click Element :  ${Save_Contact}
    Input Data :  ${AddCon_Contact_IDNumber}  ${contact_IDNumber}
    Click Element :  ${_Panel_ContactBTN_Save}
    Validate List Data And Should Be Visible :  ${list_PopupEditContactConfirm}
    Get Text And Should Be True :  ${popup_body}  ${value_popup_body}
    Click Element :  ${popup_Confirm_btn}
    Wait Loading Not Visible
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_062
        [Tags]      tanak13092022_062
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. คลิกปุ่ม + Add Contact ที่ Pop up
        ...     3. คลิกปุ่ม บันทึก
        ...     4. ระบุข้อมูลที่ Require
        ...     5. คลิกปุ่ม Save  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact
        ...     - การทำงานของปุ่ม Save
        ...       กรณี Contact ใหม่
        ...      
        ...     Expected Result
        ...     -> บันทึกข้อมูล และ Redirect กลับมาหน้าจอ Contact

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Click Element :  ${ContactPanelAddBtn}       # Click Add Contact
    Click Element :  ${AddNewContactBTN}         # Click Add Contact in popup
    Create Contact for Account :  ${contact_nameTestsystem02}
    Capture Page Screenshot
    Clear Element Text  ${loc_contactSearch}

ManageContactEngineer_tanak13092022_063
        [Tags]      tanak13092022_063
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. Search Contact : "ปิยะนุช"
        ...     2. คลิกปุ่ม Edit  ${\n}

        ...     expected_result_udf        
        ...     การแสดงผลหน้าจอ Edit Contact 
        ...      
        ...     Expected Result
        ...     -> แสดงส่วนต่างๆ ดังนี้
        ...          - Panel Contact
        ...          - Panel Service Role
        ...          - Panel Contact Type    
        ...          - ปุ่ม Back และ Save 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Input Data :  ${loc_contactSearch}  ${Account_SearchAddContact2}
    Click Edit Contact List
    Validate List Data And Should Be Visible :  ${list_PanelAddContactDetail}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_064
        [Tags]      tanak13092022_064
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. Search Contact : "ปิยะนุช"
        ...     2. คลิกปุ่ม Edit
        ...     3. คลิกปุ่ม Back  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Edit Contact 
        ...     - การทำงานของปุ่ม Back

        ...     Expected Result
        ...     -> Redirect ไปยังหน้าจอ Contact List
        ...     - แสดงผลการค้นหาที่เคยค้นหาไว้ 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Scroll Move custom  500
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    # Input Data :  ${loc_contactSearch}  ${Account_SearchAddContact2}
    # Click Edit Contact List
    # #----------------------------------------------------------------------------------------------------
    Wait Loading Not Visible
    Click Element :  ${_Panel_ContactBTN_Back}
    Wait Until Element and Should Be Visible  ${DESKTOP_INFO_ACCOUNT_NUMBER}
    Capture Page Screenshot
    # Close window

ManageContactEngineer_tanak13092022_065
        [Tags]      tanak13092022_065
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. Search Contact : "ปิยะนุช"
        ...     2. คลิกปุ่ม Edit
        ...     3. แก้ไขข้อมูล
        ...     4. คลิกปุ่ม Save  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Edit Contact
        ...     - การทำงานของปุ่ม Save
        ...       กรณี ระบุข้อมูลทั้งหมดตามเงื่อนไข 
        ...      
        ...     Expected Result
        ...     -> บันทึกข้อมูลและ Redirect ไปยังหน้าจอ Contact List 

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_Account}
    #----------------------------------------------------------------------------------------------------
    Input Data :  ${loc_contactSearch}  ${Account_SearchAddContact2}
    Click Edit Contact List
    Click Element :  ${_Panel_ContactBTN_Save}
    Wait Until Element and Should Be Visible  ${DESKTOP_INFO_ACCOUNT_NUMBER}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_066
        [Tags]      tanak13092022_066
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Non Mobile"   ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List
        ...     กรณี เลือก Feature = Engineer , View = Non Mobile
        ...      
        ...     Expected Result
        ...     -> แสดง Panel : List Non Mobile Information

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    #----------------------------------------------------------------------------------------------------
    Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_NON_MOBILE}
    Wait Until Element and Should Be Visible  ${panel-mycorp-heading}
    Wait Until Element and Should Be Visible  ${panel-mycorp-body}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_067
        [Tags]      tanak13092022_067
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Non Mobile"   ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List
        ...      การแสดงผลของ List Non Mobile Information

        ...     Expected Result
        ...      แสดงส่วนต่างๆ ดังนี้
        ...         - ช่อง Search
        ...          - Action
        ...          - Non Mobile No
        ...          - Link Name
        ...          - Type of Service
        ...               - Product Group
        ...               - Product Type
        ...               - Product Sub Group
        ...          - Host/Branch
         ...         - ต้องแจ้งล่วงหน้า
         ...         - วันทำการ
         ...         - เวลาทำการ
         ...         - ช่องทาง Update Fault
        ...          - VIP
        ...          - Period Day
        ...          - Impact Time
         ...         - ปุ่มสำหรับ View Non Mobile (กรณี ยังไม่กำหนด จะไม่แสดงปุ่มนี้)
         ...         - ปุ่มสำหรับ View Contact (กรณี ไม่มี Contact จะไม่แสดงปุ่มนี้)

    # Open web and user login :   ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu Contact Management}
    # Select Menu :  ${Menu Manage Contact}
    # Search Account :  ${AccountName}
    # Wait Until Element and Should Be Visible  ${Show Search Account} 
    # Click Element :  ${MC_Edit}
    # Select Feature From List By Value And Select Redio :  ${Feature_ENGINEER}  ${Select_redio_NON_MOBILE}
    # Scroll Move custom  500
    #----------------------------------------------------------------------------------------------------
    Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    Validate List Data And Should Be Visible :  ${list_NonMobileInformation}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_068
        [Tags]      tanak13092022_068
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Non Mobile"
        ...     6. Search = "9001062020"
        ...     7. คลิกปุ่ม View Non Mobile  ${\n}

        ...     expected_result_udf        
        ...     'หน้าจอ Contact (View: Non Mobile)
        ...     - Column :: View Non Mobile
        ...     
        ...     Expected Result
        ...     - แสดง Pop up สำหรับ View Non Mobile
        ...          - Non Mobile Number
        ...          - Link Name
        ...          - Product Group
        ...          - Product Type
        ...          - Product Sub Type
        ...          - Suggest Condition By
        ...          - Host/Branch
        ...          - Group Email
        ...          - Default Email Template
        ...          - ต้องแจ้งล่วงหน้า
        ...          - ช่องทาง Update Fault
        ...          - วันทำการ
        ...          - VIP
        ...          - เวลาทำการ
        ...          - Period Days
        ...          - Number for sms alert
        ...          - Impact Time
        ...          - Monthly report
        ...          - Fault Update Condition
        ...          - Monthly report (Email)
        ...          - Send Monthly Day
        ...          - Customer ID (CSL)
        ...          - Period time Report
        ...          - Customer Name (CSL)
        ...          - Store Code
        ...          - Link ID (CSL)
        ...          - Customer site code
        ...          - CA Initial
        ...          - Company ID
        ...          - Hight Revenue
        ...          - First Response Time
        ...          - First Response By
        ...          - Follow Up Time
        ...          - Follow Up By
        ...          - Close Response By
        ...          - Alias
        ...          - Priority
        ...          - NOC
        ...          - Portal
        ...          - SLA
        ...          - Response Hour
        ...          - Condition
        ...          - Number For Special
        ...          - Aftersale Service
        ...          - Start Time Activity
        ...          - Finish Time Activity
        ...          - Start Onsite
        ...          - End Onsite
        ...          - Date do not Activity
        ...          - Day do not activity
        ...          - Report Inform Activity
        ...          - Date Inform Activity Report
        ...          - Day Inform Activity Report
        ...          - Start Send Activity Report
        ...          - Finish Send Activity Report
        ...          - Report Complete/Cancel activity
        ...          - Report Complete Activity
        ...          - Time Send Complete Activity
        ...          - Confirm Activity (NOC/SI)
        ...          - Vendor/SI Name
        ...          - Vendor/SI Email
        ...          - Vendor/SI Contact
        ...     - ปุ่ม ปิด สำหรับปิด Pop up

    # Step login and Select Feature ENGINEER NONMOBILE
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    #----------------------------------------------------------------------
    Scroll Move custom  500
    Click Element :  ${_rowViewNonMobile}
    Validate View Non Mobile :  ${FieldName_NonMobile}
    Capture Page Screenshot
    Close popup and clear element text input search

ManageContactEngineer_tanak13092022_069
        [Tags]      tanak13092022_069
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Non Mobile"
        ...     6. Search = "9001062020"
        ...     7. คลิกปุ่ม View Contact  ${\n}

        ...     expected_result_udf        
        ...     'หน้าจอ Contact 
        ...     - Column :: View Contact
        ...     
        ...     Expected Result
        ...     - แสดง Pop up สำหรับ View Contact
        ...     - เปิด Pop up สำหรับแสดงข้อมูล Contact ที่ผูกกับ Non Mobile โดยมีส่วนต่างๆ ดังนี้
        ...          - ปุ่ม View 
        ...          - Title
        ...          - Fullname (TH)
        ...          - Fullname (EN)
        ...          - Email
        ...          - Mobile 1
        ...          - Mobile 2
        ...          - Office no
        ...          - Fax no
        ...          - Funtion
        ...          - Main
        ...          - Authorize

    Step login and Select Feature ENGINEER NONMOBILE
    Scroll Move custom  500
    Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    #----------------------------------------------------------------------
    Click Element :  ${_rowViewContact}
    Wait Loading Not Visible
    Validate List Data And Should Be Visible :  ${list_rowViewContact}
    Page Should Contain Element  ${DESKTOP_MaskingBTN}  
    Page Should Contain Element  ${DESKTOP_ContactListBody} 
    Page Should Contain Element  ${Button_close}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_070
        [Tags]      tanak13092022_070
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Non Mobile"
        ...     6. Search = "9001062020"
        ...     7. คลิกปุ่ม View Contact  
        ...     8. คลิกปุ่ม View ที่ Eyeview${\n}

        ...     expected_result_udf        
        ...     Pop up สำหรับ View Contact 
        ...     - การทำงานของปุ่ม VIEW
        ...     
        ...     Expected Result
        ...     - กดปุ่มเพื่อแสดง Clear Text
        ...     - เข้ามาครั้งแรกจะแสดงรูปตา และเขียนว่า VIEW
        ...     - เมื่อกดรูปจะเปลี่ยนเป็น กากบาททับดวงตา และเขียนว่า MASK

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowViewContact}
    #----------------------------------------------------------------------
    Validate Data Test When Click Button View
    Capture Page Screenshot
    Close Window

ManageContactEngineer_tanak13092022_071
        [Tags]      tanak13092022_071
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Non Mobile"
        ...     6. Search = "9001062020"
        ...     7. คลิกปุ่ม View Contact  
        ...     8. คลิกปุ่ม Mask ที่ Eyeview${\n}

        ...     expected_result_udf        
        ...     Pop up สำหรับ View Contact 
        ...     - การทำงานของปุ่ม MASK
        ...     
        ...     Expected Result
        ...     - จะแสดง Clear Text ตามเวลาที่กำหนด
        ...     - เมื่อกดอีกครั้งจะแสดงข้อมูลเป็นแบบ Mask Data
        ...     - เปลี่ยนกลับเป็นรูปตา เขียนว่า VIEW

    Step login and Select Feature ENGINEER NONMOBILE
    Scroll Move custom  500
    Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    Click Element :  ${_rowViewContact}
    Validate Data Test When Click Button Mask 
    Capture Page Screenshot
    Click Element :  ${Button_close_1}

ManageContactEngineer_tanak13092022_072
        [Tags]      tanak13092022_072
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Non Mobile"
        ...     6. คลิกปุ่ม Edit ที่ Non Mobile No. = "9001062020"  ${\n}

        ...     expected_result_udf        
        ...     'หน้าจอ Contact 
        ...     - Column :: Action
        ...     
        ...     Expected Result
        ...     - แสดงปุ่ม Edit เมื่อคลิกจะ Redirect ไปหน้า Contact Non mobile Info.

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    #----------------------------------------------------------------------
    Click Element :  ${_rowEdit}
    Wait Until Element and Should Be Visible   ${main_panel_EditNonMobilePanel}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_073
        [Tags]      tanak13092022_073
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     ${\n}

        ...     expected_result_udf        
        ...     'หน้าจอ Contact Non Mobile Info.
        ...     
        ...     Expected Result
        ...     -> แสดง Panel Manage Non Mobile 
        ...     -> แสดง Panel List Contact Information

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    #----------------------------------------------------------------------
    Wait Until Element and Should Be Visible  ${sub panel ManageNonMobilePanel}
    Wait Until Element and Should Be Visible  ${sub panel List Contact Information}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_074
        [Tags]      tanak13092022_074
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Non Mobile"
        ...     6. คลิกปุ่ม Edit ที่ Non Mobile No. = "9001062020"
        ...     7. คลิกปุ่ม View ที่ Panel Manage Non Mobile 
        ...     8. คลิกปุ่ม ปิด   ${\n}

        ...     expected_result_udf        
        ...     'หน้าจอ Contact Non Mobile Info. : Panel Manage Non Mobile 
        ...     - การทำงานของปุ่ม View Manage Non Mobile
        ...     
        ...     Expected Result
        ...     - เปิด Pop up สำหรับแสดงข้อมูล Non Mobile โดยมีส่วนต่างๆ ดังนี้
        ...          - Non Mobile Number
        ...          - Link Name
        ...          - Product Group
        ...          - Product Type
        ...          - Product Sub Type
        ...          - Suggest Condition By
        ...          - Host/Branch
        ...          - Group Email
        ...          - Default Email Template
        ...          - ต้องแจ้งล่วงหน้า
        ...          - ช่องทาง Update Fault
        ...          - วันทำการ
        ...          - VIP
        ...          - เวลาทำการ
        ...          - Period Days
        ...          - Number for sms alert
        ...          - Impact Time
        ...          - Monthly report
        ...          - Fault Update Condition
        ...          - Monthly report (Email)
        ...          - Send Monthly Day
        ...          - Customer ID (CSL)
        ...          - Period time Report
        ...          - Customer Name (CSL)
        ...          - Store Code
        ...          - Link ID (CSL)
        ...          - Customer site code
        ...          - CA Initial
        ...          - Company ID
        ...          - Hight Revenue
        ...          - First Response Time
        ...          - First Response By
        ...          - Follow Up Time
        ...          - Follow Up By
        ...          - Close Response By
        ...          - Alias
        ...          - Priority
        ...          - NOC
        ...          - Portal
        ...          - SLA
        ...          - Response Hour
        ...          - Condition
        ...          - Number For Special
        ...          - Aftersale Service
        ...          - Start Time Activity
        ...          - Finish Time Activity
        ...          - Start Onsite
        ...          - End Onsite
        ...          - Date do not Activity
        ...          - Day do not activity
        ...          - Report Inform Activity
        ...          - Date Inform Activity Report
        ...          - Day Inform Activity Report
        ...          - Start Send Activity Report
        ...          - Finish Send Activity Report
        ...          - Report Complete/Cancel activity
        ...          - Report Complete Activity
        ...          - Time Send Complete Activity
        ...          - Confirm Activity (NOC/SI)
        ...          - Vendor/SI Name
        ...          - Vendor/SI Email
        ...          - Vendor/SI Contact
        ...     - ปุ่ม ปิด สำหรับปิด Pop up

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    #----------------------------------------------------------------------
    Click Element :  ${Managebtn_View_NonMobile} 
    Validate View Non Mobile :  ${FieldName_NonMobile}
    Click Element :  ${btnClose_nonMobile}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_075
        [Tags]      tanak13092022_075
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Non Mobile"
        ...     6. คลิกปุ่ม Edit ที่ Non Mobile No. = "9001062020"
        ...     7. คลิกปุ่ม Edit ที่ Panel Manage Non Mobile  
        ...     8. คลิกปุ่ม บันทึก   ${\n}

        ...     expected_result_udf        
        ...     'หน้าจอ Contact Non Mobile Info. : Panel Manage Non Mobile 
        ...     - การทำงานของปุ่ม View Manage Non Mobile
        ...     
        ...     Expected Result
        ...     - เปิด Pop up สำหรับแสดงข้อมูล Non Mobile โดยมีส่วนต่างๆ ดังนี้
        ...          - Non Mobile Number
        ...          - Link Name
        ...          - Product Group
        ...          - Product Type
        ...          - Product Sub Type
        ...          - Suggest Condition By
        ...          - Host/Branch
        ...          - Group Email
        ...          - Default Email Template
        ...          - ต้องแจ้งล่วงหน้า
        ...          - ช่องทาง Update Fault
        ...          - วันทำการ
        ...          - VIP
        ...          - เวลาทำการ
        ...          - Period Days
        ...          - Number for sms alert
        ...          - Impact Time
        ...          - Monthly report
        ...          - Fault Update Condition
        ...          - Monthly report (Email)
        ...          - Send Monthly Day
        ...          - Customer ID (CSL)
        ...          - Period time Report
        ...          - Customer Name (CSL)
        ...          - Store Code
        ...          - Link ID (CSL)
        ...          - Customer site code
        ...          - CA Initial
        ...          - Company ID
        ...          - Hight Revenue
        ...          - First Response Time
        ...          - First Response By
        ...          - Follow Up Time
        ...          - Follow Up By
        ...          - Close Response By
        ...          - Alias
        ...          - Priority
        ...          - NOC
        ...          - Portal
        ...          - SLA
        ...          - Response Hour
        ...          - Condition
        ...          - Number For Special
        ...          - Aftersale Service
        ...          - Start Time Activity
        ...          - Finish Time Activity
        ...          - Start Onsite
        ...          - End Onsite
        ...          - Date do not Activity
        ...          - Day do not activity
        ...          - Report Inform Activity
        ...          - Date Inform Activity Report
        ...          - Day Inform Activity Report
        ...          - Start Send Activity Report
        ...          - Finish Send Activity Report
        ...          - Report Complete/Cancel activity
        ...          - Report Complete Activity
        ...          - Time Send Complete Activity
        ...          - Confirm Activity (NOC/SI)
        ...          - Vendor/SI Name
        ...          - Vendor/SI Email
        ...          - Vendor/SI Contact
        ...     - ปุ่ม ปิด สำหรับปิด Pop up

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    #----------------------------------------------------------------------
    Click Element :  ${Managebtn Edit NonMobile} 
    Validate Field Edit Non Mobile :  ${FieldName_EditNonMobile}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_076
        [Tags]      tanak13092022_076
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...      ${\n}

        ...     expected_result_udf        
        ...     'หน้าจอ Contact Non Mobile Info. : Panel List Contact Information
        ...     
        ...     Expected Result
        ...     -> แสดงส่วนต่างๆ ดังนี้
        ...          - Action
        ...          - Title
        ...          - Fullname (TH)
        ...          - Fullname (EN)
        ...          - Email
        ...          - Mobile 1
        ...          - Mobile 2
        ...          - Office no
        ...          - Fax no
        ...          - Funtion
        ...          - Main
        ...          - Authorize

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    #----------------------------------------------------------------------
    Validate Panel List Contact Information :  ${List Contact Information NonMobile}
    Capture Page Screenshot
    Click Element :  ${btn_ClosePopup_modal_NonMobile} 
    Wait Loading Not Visible

ManageContactEngineer_tanak13092022_077
        [Tags]      tanak13092022_077
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Non Mobile"
        ...     6. Search = "9001062020"
        ...     7. คลิกปุ่ม Edit
        ...     8. คลิกปุ่ม View ที่ Eyeview   ${\n}

        ...     expected_result_udf        
        ...     'หน้าจอ Contact Non Mobile Info. : Panel List Contact Information
        ...     - การทำงานของปุ่ม VIEW
        ...     
        ...     Expected Result
        ...     - กดปุ่มเพื่อแสดง Clear Text
        ...     - เข้ามาครั้งแรกจะแสดงรูปตา และเขียนว่า VIEW
        ...     - เมื่อกดรูปจะเปลี่ยนเป็น กากบาททับดวงตา และเขียนว่า MASK

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    #----------------------------------------------------------------------
    Click Element :   ${MaskingBTN}
    Check status button Masking :  ${MaskingBTN}  ${MASK}
    Capture Page Screenshot
    Close Window
    # Click Button :  ${Account_buttonBack}

ManageContactEngineer_tanak13092022_078
        [Tags]      tanak13092022_078
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Account : "แสตนฟอร์ด"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Edit 
        ...     4. เลือก Feature จาก Dropdown = "Engineer"
        ...     5. เลือก View = "Non Mobile"
        ...     6. Search = "9001062020"
        ...     7. คลิกปุ่ม Edit
        ...     8. คลิกปุ่ม Mask ที่ Eyeview   ${\n}

        ...     expected_result_udf        
        ...     'หน้าจอ Contact Non Mobile Info. : Panel List Contact Information
        ...     - การทำงานของปุ่ม MASK
        ...     
        ...     Expected Result
        ...     - จะแสดง Clear Text ตามเวลาที่กำหนด
        ...     - เมื่อกดอีกครั้งจะแสดงข้อมูลเป็นแบบ Mask Data
        ...     - เปลี่ยนกลับเป็นรูปตา เขียนว่า VIEW

    Step login and Select Feature ENGINEER NONMOBILE
    Scroll Move custom  500
    Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    Click Element :  ${_rowEdit}
    #----------------------------------------------------------------------
    Click Element :   ${MaskingBTN}
    Check status button Masking :  ${MaskingBTN}  ${MASK}
    Click Element :   ${MaskingBTN}
    Check status button Masking :  ${MaskingBTN}  ${VIEW}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_079
        [Tags]      tanak13092022_079
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. Search = "9001062020"
        ...     2. คลิกปุ่ม Edit
        ...     3. ทำเครื่องหมาย ü ที่ Main  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact Non Mobile Info. : Panel List Contact Information
        ...     - Column : Main
        ...     
        ...     Expected Result
        ...     -> เป็น Checkbox 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    #----------------------------------------------------------------------
    Input Data :  ${ContactFilter}  ${ContactSearch}
    Wait Until Element Is Visible 	${checkbox_Main}   30s
    Check Should Not Be Selected Checkbox :  ${checkbox_Main}
    Select Checkbox  ${checkbox_Main}
    Capture Page Screenshot
    #----------------------------------------------------------------------
    Unselect Checkbox  ${checkbox_Main}     # Prepra data for test

ManageContactEngineer_tanak13092022_080
        [Tags]      tanak13092022_080
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. Search = "9001062020"
        ...     2. คลิกปุ่ม Edit
        ...     3. ทำเครื่องหมาย ü ที่ Authorize  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact Non Mobile Info. : Panel List Contact Information
        ...     - Column : Authorize
        ...     
        ...     Expected Result
        ...     > เป็น Checkbox 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Input Data :  ${ContactFilter}  ${ContactSearch}
    #----------------------------------------------------------------------
    Wait Until Element Is Visible 	${checkbox_Authorize}   30s
    Check Should Not Be Selected Checkbox :  ${checkbox_Authorize}
    Select Checkbox  ${checkbox_Authorize}
    Capture Page Screenshot
    #----------------------------------------------------------------------
    Unselect Checkbox  ${checkbox_Authorize}    # Prepra data for test
    Close Window

ManageContactEngineer_tanak13092022_081
        [Tags]      tanak13092022_081
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. เลือก Contact ที่ต้องการ
        ...     2. คลิกปุ่ม Delete  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Feature - Engineer
        ...     - การทำงานของ Icon สำหรับ Delete

        ...     Expected Result
        ...     -> แสดง Popup แจ้งเตือน
        ...          - Topic :: ยืนยันการลบ
        ...          - Message :: "คุณต้องการลบข้อมูล Contact ออกจากระบบหรือไม่ ?"
        ...          - Button :: ยกเลิก และ ยืนยัน 

    Step login and Select Feature ENGINEER NONMOBILE
    Scroll Move custom  500
    Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    Click Element :  ${_rowEdit}
    #---------------------------------------------------------------------------------------
    Input Data :  ${ContactFilter}  ${contact_nameTestsystem}
    Check Contact before delete      # if not contact will create
    #---------------------------------------------------------------------------------------
    Click Element :  ${btn_delContactInList}
    Validate Popup Delete Confirm
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_082
        [Tags]      tanak13092022_082
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. เลือก Contact ที่ต้องการ
        ...     2. คลิกปุ่ม Delete
        ...     3. คลิกปุ่ม ยกเลิก ที่ Pop up ยืนยัน  ${\n}

        ...     expected_result_udf        
        ...     Popup ยืนยันการลบ
        ...     - การทำงานของปุ่ม ยกเลิก
 
        ...     Expected Result
        ...     -> ปิด Popup แจ้งเตือน
        ...     - ไม่ทำการใดๆ กับข้อมูล 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Input Data :  ${ContactFilter}  ${contact_nameTestsystem}
    # Click Element :  ${btn_delContactInList}
    #---------------------------------------------------------------------------------------
    Click Element :  ${popup_cancel}
    Wait Until Element and Should Be Visible  ${check_ListContact}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_083
        [Tags]      tanak13092022_083
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. เลือก Contact ที่ต้องการ
        ...     2. คลิกปุ่ม Delete
        ...     3. คลิกปุ่ม ยืนยัน ที่ Pop up ยืนยัน  ${\n}

        ...     expected_result_udf        
        ...     Popup ยืนยันการลบ
        ...     - การทำงานของปุ่ม ยืนยัน

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Input Data :  ${ContactFilter}  ${contact_nameTestsystem}
    #---------------------------------------------------------------------------------------
    Click Element :  ${btn_delContactInList}
    Click Element :  ${popup_Confirm_btn}
    Wait Until Element and Should Be Visible  ${No data available in table}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_084
        [Tags]      tanak13092022_084
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Contact List :: Feature - Engineer
        ...     - การทำงานของปุ่ม Add Contact

        ...     Expected Result
        ...     -> แสดง Popup สำหรับ Search Contact 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    #----------------------------------------------------------------------
    Click Element :  ${NonM_AddContactBtn}
    Wait Until Element and Should Be Visible  ${NonM_Popup_modalContent}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_085
        [Tags]      tanak13092022_085
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...      ${\n}

        ...     expected_result_udf        
        ...     การแสดงผลของ Popup Search Contact 
        ...      
        ...     Expected Result
        ...     -> Textbox สำหรับ Search
        ...     - ปุ่ม Search
        ...     - ปุ่ม Add Contact
        ...     - ส่วนของ Contact result
        ...     - ปุ่ม ปิด
        ...     - ปุ่ม ยืนยัน 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    #----------------------------------------------------------------------
    Validate List Data And Should Be Visible :  ${list_elementAddContact}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_086
        [Tags]      tanak13092022_086
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. ระบุ Keyword : "จริงใจ"
        ...     3. คลิกปุ่ม Search${\n}

        ...     expected_result_udf        
        ...     Popup Search Contact
        ...     - การทำงานของปุ่ม Search

        ...     Expected Result
        ...     -> แสดงผลการค้นหาตาม Keyword ที่ระบุ
        ...     - แสดงผลการค้นหาที่ Contact result ด้านล่าง 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    #----------------------------------------------------------------------
    Input Data :  ${Textbox_CONTACT_SEARCH}  ${contact_nameJINGJAI}
    Click Element :  ${DESKTOP_SearchContactBTN}
    Wait Until Element and Should Be Visible  ${AddContactListBody}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_087
        [Tags]      tanak13092022_087
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     ${\n}

        ...     expected_result_udf        
        ...     Popup Search Contact
        ...     - การแสดงผลของ Contact result

        ...     Expected Result
        ...     -> แสดงเป็น List สำหรับเลือกข้อมูล Contact
        ...     - สามารถเลือก Contact ได้เพียงรายการเดีบวเท่านั้น
        ...     - แสดงส่วนต่างๆ ดังนี้
        ...          - Contact Name (TH)
        ...          - Contact Name (EN)
        ...          - ID Type
        ...          - ID Number
        ...          - Mobile No. 1
        ...          - Mobile No. 2
        ...          - Home No.
        ...          - Office No.

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Input Data :  ${Textbox_CONTACT_SEARCH}  ${contact_nameJINGJAI}
    # Click Element :  ${DESKTOP_SearchContactBTN}
    #----------------------------------------------------------------------
    Validate List Data And Should Be Visible :  ${listField_ResultSearch_AddContact}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_088
        [Tags]      tanak13092022_088
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. คลิกปุ่ม ปิด ที่ Pop up${\n}

        ...     expected_result_udf        
        ...     Popup Search Contact
        ...     - การทำงานของปุ่ม ปิด

        ...     Expected Result
        ...     -> ปิด Popup Search Contact 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Input Data :  ${Textbox_CONTACT_SEARCH}  ${contact_nameJINGJAI}
    # Click Element :  ${DESKTOP_SearchContactBTN}
    # Wait Until Page Contains Element  ${AddContactListBody}  60s
    #----------------------------------------------------------------------
    Click Element :  ${btn_ClosePopup_modal_AddContactList}
    Capture Page Screenshot
    Wait Loading Not Visible

ManageContactEngineer_tanak13092022_089
        [Tags]      tanak13092022_089
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. ระบุ Keyword : "จริงใจ"
        ...     3. คลิกปุ่ม Search
        ...     4. เลือก Contact ที่ต้องการ
        ...     5. คลิกปุ่ม บันทึก ที่ Pop up  ${\n}

        ...     expected_result_udf        
        ...     Popup Search Contact
        ...     - การทำงานของปุ่ม บันทึก

        ...     Expected Result
        ...     -> Redirect ไปที่หน้าจอ Add Contact พร้อมกับดึงข้อมูล Contact ที่เลือกไปแสดง 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    #------------------------------------------------------------------------------
    Click Element :  ${NonM_AddContactBtn}
    Input Data :  ${Textbox_CONTACT_SEARCH}  ${contact_nameJINGJAI}
    Click Element :  ${DESKTOP_SearchContactBTN}
    Click Element :  ${AddContactList_row1}
    Click Element :  ${SaveSelectContact}
    Capture Page Screenshot

    ## Clear data for test --------------------------------------------------------
    Wait Loading Not Visible
    Input Data :  ${ContactFilter}  ${contact_nameTestNM}
    Click Element :  ${btn_delete_accListContactInformation_row1}   
    Click Element :  ${popup_Confirm_btn}
    # -----------------------------------------------------------------------------
    Wait Loading Not Visible

ManageContactEngineer_tanak13092022_090
        [Tags]      tanak13092022_090
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. คลิกปุ่ม + Add Contact ที่ Pop up  ${\n}

        ...     expected_result_udf        
        ...     Popup Search Contact
        ...     - การทำงานของปุ่ม Add Contact
        ...      
        ...     Expected Result
        ...     -> Redirect ไปยังหน้าจอ Add Contact 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  300
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    #------------------------------------------------------------------------------
    Click Element :  ${NonM_AddContactBtn}
    Click Element :  ${DESKTOP_AddNewContactBTN}
    Wait Until Element and Should Be Visible  ${_Panel_Contact}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_091
        [Tags]      tanak13092022_091
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. คลิกปุ่ม + Add Contact ที่ Pop up  ${\n}

        ...     expected_result_udf        
        ...     การแสดงผลหน้าจอ Add Contact 
        ...      
        ...     Expected Result
        ...     -> แสดงส่วนต่างๆ ดังนี้
        ...          - Panel Contact
        ...          - Panel Service Role
        ...          - Panel Contact Type **
        ...          - ปุ่ม Back และ Save 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Validate List Data And Should Be Visible :  ${list_PanelAddContactDetail}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_092
            [Tags]      tanak13092022_092
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...      ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact
        ...     - Panel Contact 
        ...      
        ...     Expected Result
        ...     -> แสดงส่วนต่างๆ เป็น Textbox สำหรับระบุข้อมูล ดังนี้
        ...          - Title* 
        ...          - Title Other
        ...          - First Name (TH)*
        ...          - Last Name (TH)* 
        ...          - First Name (EN)* 
        ...          - Last Name (EN)*
        ...          - Birthdate
        ...          - ID Type 
        ...          - ID Number
        ...          - Email 
        ...          - Mobile No. 1*
        ...          - Mobile No. 2 
        ...          - Office No.*
        ...          - Home No.*
        ...          - Fax No.
        ...          - Contact Type*
        ...          - SKA Contact
        ...          - Contact Priority
        ...          - Password 
        ...          - Position 
        ...          - Department  

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Validate List Data And Should Be Visible :  ${List_AddCon_PanelContact}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_093
            [Tags]      tanak13092022_093
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Dropdown lsit สำหรับเลือก Title* 
        ...      
        ...     Expected Result
        ...     -> - เป็น Require field
        ...     - แสดงค่าเริ่มต้นเป็น "คุณ"
        ...     - เป็น Dropdown list สำหรับเลือก ประกอบด้วย
        ...          - นาย
        ...          - นาง
        ...          - นางสาว
        ...          - Mr.
        ...          - Mrs.
        ...          - Miss
        ...          - Ms.
        ...          - Other 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
	Get Selected List Labels And Should Be True :  ${AddCon_Element_Title}  ${DropdownlistTitleDefault} 
    Get Selected List Labels And Should For Data list :  ${AddCon_Element_Title}  ${DropdownlistTitle}
    Click Element :  ${AddCon_Element_Title}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_094
            [Tags]      tanak13092022_094
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. เลือก Title Other ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Title Other 
        ...      
        ...     Expected Result
        ...     -> กรณี เลือก Title เป็น "Other" จะเปิดช่องสำหรับระบุข้อมูล
        ...     - เป็น Require field 
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify Case Select Title is Other And Can Write In Textbox Title Other
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_095
            [Tags]      tanak13092022_095
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ First Name (TH) ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ First Name (TH)*

        ...     Expected Result
        ...     -> เป็น Require field
        ...     - สามารถระบุค่าได้ 255 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_FirstNameTH}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_FirstNameTH}  ${255}
    Capture Page Screenshot
    Clear Element Text 	 ${AddCon_Contact_FirstNameTH}
    Press Keys  ${AddCon_Contact_FirstNameTH}  \DELETE

ManageContactEngineer_tanak13092022_096
            [Tags]      tanak13092022_096
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Last Name (TH) ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Last Name (TH)*

        ...     Expected Result
        ...     -> เป็น Require field
        ...     - สามารถระบุค่าได้ 255 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_LastNameTH}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_LastNameTH}  ${255}
    Capture Page Screenshot
    # Prepra data for test ------------------------------------------------------------------------------------
    Clear Element Text 	 ${AddCon_Contact_LastNameTH}
    Press Keys  ${AddCon_Contact_FirstNameTH}  \DELETE

ManageContactEngineer_tanak13092022_097
            [Tags]      tanak13092022_097
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ First Name (EN) ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ First Name (EN)*

        ...     Expected Result
        ...     -> เป็น Require field
        ...     - สามารถระบุค่าได้ 255 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_FirstNameEN}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_FirstNameEN}  ${255}
    Capture Page Screenshot
    # Prepra data for test ------------------------------------------------------------------------------------
    Clear Element Text 	 ${AddCon_Contact_FirstNameEN}
    Press Keys  ${AddCon_Contact_FirstNameEN}  \DELETE

ManageContactEngineer_tanak13092022_098
            [Tags]      tanak13092022_098
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Last Name (EN) ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Last Name (EN)*

        ...     Expected Result
        ...     -> เป็น Require field
        ...     - สามารถระบุค่าได้ 255 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_LastNameEN}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_LastNameEN}  ${255}
    Capture Page Screenshot
    # Prepra data for test ------------------------------------------------------------------------------------
    Clear Element Text 	 ${AddCon_Contact_LastNameEN}
    Press Keys  ${AddCon_Contact_LastNameEN}  \DELETE

ManageContactEngineer_tanak13092022_099
            [Tags]      tanak13092022_099
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ ID Type ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ ID Type
  
        ...     Expected Result
        ...     -> แสดงค่าเริ่มต้นเป็นค่าว่าง

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Get Selected List Labels And Should Be True :  ${AddCon_Contact_IDType}  ${EMPTY}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_100
            [Tags]      tanak13092022_100
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ ID Number ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ ID Number
  
        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 50 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_IDNumber}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_IDNumber}  ${50}
    Capture Page Screenshot
    Close Window

ManageContactEngineer_tanak13092022_101
            [Tags]      tanak13092022_101
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ Birthdate ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับเลือก Birthdate

        ...     Expected Result
        ...     -> เมื่อคลิก จะแสดงเป็น Date Picker สำหรับเลือกวันที่
        ...     - แสดงรูปแบบเป็น dd/mm/yyyy
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    Step login and Select Feature ENGINEER NONMOBILE
    Scroll Move custom  500
    Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    Click Element :  ${_rowEdit}
    Click Element :  ${NonM_AddContactBtn}
    Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify Format Date
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_102
            [Tags]      tanak13092022_102
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ Email หากมีมากกว่า 1 mail ให้ Enter หรือคั่นด้วย ; เพื่อระบุ Email ถัดไป  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Email

        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 255 ตัวอักษร
        ...     - ตรวจสอบรูปแบบของ Email
        ...     - สามารถกรอกได้มากกว่า 1 Email 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Validate Format Mail :  ${255}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_103
            [Tags]      tanak13092022_103
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Mobile No. 1  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Mobile No. 1*

        ...     Expected Result
        ...     -> ตรวจสอบค่าที่ระบุ ต้องขึ้นต้นด้วย 08, 09, 06
        ...     - ตรวจสอบเบอร์ ต้องมีจำนวน 10 หลัก 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Validate Format Mobile :  ${AddCon_Contact_MobileNo1}  ${Err_Contact_MobileNo1}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_104
            [Tags]      tanak13092022_104
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Mobile No. 2  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Mobile No. 2*

        ...     Expected Result
        ...     -> ตรวจสอบค่าที่ระบุ ต้องขึ้นต้นด้วย 08, 09, 06
        ...     - ตรวจสอบเบอร์ ต้องมีจำนวน 10 หลัก 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Validate Format Mobile :  ${AddCon_Contact_MobileNo2}   ${Err_Contact_MobileNo2}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_105
            [Tags]      tanak13092022_105
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Office No.  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Office No.*

        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 50 ตัวอักษร 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_OfficeNo}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_OfficeNo}  ${50}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_106
            [Tags]      tanak13092022_106
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ Fax No.  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Fax No.

        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 50 ตัวอักษร 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_FaxNo}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_FaxNo}  ${50}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_107
            [Tags]      tanak13092022_107
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุ Home No.  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Home No.*

        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 50 ตัวอักษร 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_HomeNo}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_HomeNo}  ${50}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_108
            [Tags]      tanak13092022_108
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ Position  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Position

        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 150 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_Position}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_Position}  ${150}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_109
            [Tags]      tanak13092022_109
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Contact
        ...     3. ระบุหรือไม่ระบุ Department  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Contact
        ...     - การทำงานของ Textbox สำหรับระบุ Department
     
        ...     Expected Result
        ...     -> สามารถระบุค่าได้ 150 ตัวอักษร
        ...     - แสดงค่าเริ่มต้นเป็นค่าว่าง 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Verify EMPTY Data And Input Text Limit character :  ${AddCon_Contact_Department}  ${StringLength_280}
    Verify Should Be Length :  ${AddCon_Contact_Department}  ${150}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_110
            [Tags]      tanak13092022_110
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Service Role    ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact 
        ...     - Panel Service Role

        ...     Expected Result
        ...     -> ปิด Panel Contact
        ...     - เปิด Panel Service Role
        ...          - Stage
        ...          - Role
        ...          - Service
        ...          - Func. 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Click Element :  ${AddContact_PanelServiceRole}
    Validate List Data And Should Be Visible :  ${List_ColumnServiceRole}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_111
        [Tags]      tanak13092022_111
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. เลือก Panel : Service Role    
        ...     3. เลือก Func.  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact :: Panel Service Role
        ...     - การทำงานของ Dropdown list สำหรับเลือก Func.

        ...     Expected Result
        ...     -> 
        ...     - เป็น Dropdown list สำหรับเลือก
        ...     - แสดงค่าเริ่มต้นเป็น "N/A"

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    # Click Element :  ${AddContact_PanelServiceRole}
    #------------------------------------------------------------------------------
    Get Selected List Labels And Should Be True :  ${_Contact_RoleFuncID}  N/A
    Capture Page Screenshot

# ManageContactEngineer_tanak13092022_112  **Cencel
# ManageContactEngineer_tanak13092022_113  **Cencel
# ManageContactEngineer_tanak13092022_114  **Cencel
# ManageContactEngineer_tanak13092022_115  **Cencel

ManageContactEngineer_tanak13092022_116
            [Tags]      tanak13092022_116
            # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. คลิกปุ่ม Back  ${\n}

        ...     expected_result_udf        
        ...     น้าจอ Add Contact 
        ...      การทำงานของปุ่ม Back

        ...     Expected Result
        ...     -> Redirect ไปยังหน้าจอ Contact List
        ...     - แสดงผลการค้นหาที่เคยค้นหาไว้ 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Click Element :  ${NonM_AddContactBtn}
    # Click Element :  ${DESKTOP_AddNewContactBTN}
    #------------------------------------------------------------------------------
    Click Element :  ${_Panel_ContactBTN_Back}
    Wait Until Element and Should Be Visible  ${_verify_result9001062020}
    Capture Page Screenshot

# ManageContactEngineer_tanak13092022_117  **cancel

ManageContactEngineer_tanak13092022_118
        [Tags]      tanak13092022_118
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. คลิกปุ่ม + Add Contact
        ...     2. คลิกปุ่ม + Add Contact ที่ Pop up
        ...     3. คลิกปุ่ม บันทึก
        ...     4. ระบุข้อมูลที่ Require
        ...     5. คลิกปุ่ม Save  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Add Contact
        ...     - การทำงานของปุ่ม Save
        ...       กรณี Contact ใหม่
        ...      
        ...     Expected Result
        ...     -> บันทึกข้อมูล และ Redirect กลับมาหน้าจอ Contact

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    ## prepare data for test -----------------------------------------------------
    Input Data :  ${ContactFilter}  ${contact_nameTestsystem03}
    Check Contact In List Contact Information       # Check contact before create
    #----------------------------------------------------------------------------
    Create Data Test Add Contact for Non Mobile :  ${contact_nameTestsystem03}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_119
        [Tags]      tanak13092022_119
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. Search Contact : "จริงใจ"
        ...     2. คลิกปุ่ม Edit  ${\n}

        ...     expected_result_udf        
        ...     การแสดงผลหน้าจอ Edit Contact 
        ...      
        ...     Expected Result
        ...     -> แสดงส่วนต่างๆ ดังนี้
        ...          - Panel Contact
        ...          - Panel Service Role
        ...          - ปุ่ม Back และ Save 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    #------------------------------------------------------------------------------
    Input Data :  ${ContactFilter}  ${contact_nameJINGJAI}
    Click Element :  ${btnEdit_nameJINGJAI}
    Wait Until Element and Should Be Visible  ${ContactSubPanel}
    Wait Until Element and Should Be Visible  ${AddContact_PanelServiceRole}
    Wait Until Element and Should Be Visible  ${_Panel_ContactBTN_Back}
    Wait Until Element and Should Be Visible  ${_Panel_ContactBTN_Save}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_120
        [Tags]      tanak13092022_120
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. Search Contact : "จริงใจ"
        ...     2. คลิกปุ่ม Edit  
        ...     3. คลิกปุ่ม Back  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Edit Contact 
        ...     - การทำงานของปุ่ม Back

        ...     Expected Result
        ...     -> Redirect ไปยังหน้าจอ Contact List
        ...     - แสดงผลการค้นหาที่เคยค้นหาไว้ 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Input Data :  ${ContactFilter}  ${contact_nameJINGJAI}
    # Click Element :  ${btnEdit_nameJINGJAI}
    #------------------------------------------------------------------------------
    Click Element :  ${_Panel_ContactBTN_Back}
    Wait Loading Not Visible
    Wait Until Element and Should Be Visible  ${check List Contact JINGJAI}
    Capture Page Screenshot

ManageContactEngineer_tanak13092022_121
        [Tags]      tanak13092022_121
        # [tags]      ManageContactEngineer
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     Manage Contact Engineer ${\n}

        ...     TEST STEPS: 
        ...     1. Search Contact : "จริงใจ"
        ...     2. คลิกปุ่ม Edit
        ...     3. แก้ไขข้อมูล
        ...     4. คลิกปุ่ม Save  ${\n}

        ...     expected_result_udf        
        ...     หน้าจอ Edit Contact
        ...     - การทำงานของปุ่ม Save
        ...       กรณี ระบุข้อมูลทั้งหมดตามเงื่อนไข 
        ...      
        ...     Expected Result
        ...     -> บันทึกข้อมูลและ Redirect ไปยังหน้าจอ Contact List 

    # Step login and Select Feature ENGINEER NONMOBILE
    # Scroll Move custom  500
    # Input Data :  ${Search_ListContactInformation}  ${data_NonMobileFilter}
    # Click Element :  ${_rowEdit}
    # Input Data :  ${ContactFilter}  ${contact_nameJINGJAI}
    #------------------------------------------------------------------------------
    Click Element :  ${btnEdit_nameJINGJAI}
    Wait Until Element and Should Be Visible  ${AddCon_Contact_MobileNo1}
    Clear Element Text  ${AddCon_Contact_MobileNo1}
    Gen Current Date
    Clear Element Text 	 ${AddCon_Contact_MobileNo1}
    Input Data :  ${AddCon_Contact_MobileNo1}  0820${today_time}
    Click Element :  ${_Panel_ContactBTN_Save}
    Wait Until Element and Should Be Visible  ${btnEdit_nameJINGJAI}
    Capture Page Screenshot