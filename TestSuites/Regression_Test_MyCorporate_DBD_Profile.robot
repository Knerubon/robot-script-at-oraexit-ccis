*** Settings ***
Documentation   Regression_Test_MyCorporate_DBD_Profile
Metadata        Version 1.0.0
Resource        ../../taas-at-fine-esd-ccis/Resources/Repository/MyCorporate_Common_Repository.robot
Resource        ../../taas-at-fine-esd-ccis/Resources/Variables/MyCorporate_Common_TestData.robot
Resource        ../../taas-at-fine-esd-ccis/Resources/Variables/MyCorporate_Common_Variables.robot
Resource        ../../taas-at-fine-esd-ccis/Resources/Keywords/MyCorporate_Common_Keywords.robot
# Library         Selenium2Library
# Library         XML
# Test Teardown       Close All Browsers

*** Test Cases ***
MyCorporate_DBDProfile_pattp070121001_001
        [Tags]      pattp070121001_001
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     MyCorporate - DBD Profile 
        ...     TEST STEPS: 
        ...     1. เข้าใช้งานที่ URL: https://test-mycorporate.ais.co.th/Portal/Employee   #R1_Regression Test MyCorporate - DBD Profile
        ...     2. กรอก Username : ""chanawam""
        ...     3. กรอก Password : ""chanawam"" 
        ...     4. ทำเครื่องหมาย ""☑"" บน Google reCAPTCHA > Skip 
        ...     5. คลิกปุ่ม ตกลง 
        ...     6. เลือกเมนูด้านซ้าย ""DBD"" 
        ...     7. เลือกเมนูย่อยเป็น ""DBDProfile"""  
        ...     expected_result_udf        
        ...     หน้าจอ Search DBD
        ...     EXPECTED RESULT: 
        ...     ประกอบไปด้วยส่วนต่างๆ ดังนี้ 
        ...     -> ช่อง Keyword สำหรับระบุข้อมูลการค้นหา (placeholder : Tax ID, Supplier Name) 
        ...     -> ปุ่ม Cancel 

    Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    Select Menu :  ${Menu_DBD}
    Select Menu :  ${SubMenu_DBDProflie}

    Validate List Data And Should Be Visible :  ${PanelSearchDBDProfile}
    Capture Page Screenshot
    # Close Browser

MyCorporate_DBDProfile_pattp070121001_002
        [Tags]      pattp070121001_002
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     MyCorporate - DBD Profile  ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search  ${\n}
    
        ...     expected_result_udf 
        ...     'หน้าจอ Search DBD
        ...     -> ปุ่ม Search
        ...     EXPECTED RESULT: 
        ...     ประกอบไปด้วยส่วนต่างๆ ดังนี้ 
        ...     -> แสดง Panel Result
        ...     ประกอบไปด้วยส่วนต่างๆ ดังนี้
        ...     -> ปุ่ม Export
        ...     -> เลขทะเบียน 
        ...     -> ชื่อนิติบุคคล 
        ...     -> สถานะ
        ...     -> ประเภทธุรกิจ 
        ...     -> จังหวัด
        ...     -> วันที่จดทะเบียน
        ...     -> ทุนจดทะเบียน (Format : currency ทศนิยม 2 ตำแหน่ง)
        ...     -> ปุ่ม แว่นขยาย สำหรับเข้าไปดูข้อมูล Result Detail

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    Input Text :  ${inputTxt_Search}  ${TaxID}
    Click Element :  ${btn_Search}
    Click Menu Quick
    
    Scroll Move custom  300
    Validate List Data And Should Be Visible :  ${list_ResultDBDProfile}
    Should Be 2digit :  ${RegisteredCapital}    # Check ทุนจดทะเบียน (Format : currency ทศนิยม 2 ตำแหน่ง)
    Capture Page Screenshot
    # Close Browser

MyCorporate_DBDProfile_pattp070121001_003     
        [Tags]      pattp070121001_003
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     MyCorporate - DBD Profile  ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม Export  ${\n}

        ...     expected_result_udf
        ...     หน้าจอ Panel Result
        ...     -> ปุ่ม Export
        ...     EXPECTED RESULT: 
        ...     -> Export ข้อมูลออกมาเป็นไฟล์ Excel (Format : DBDProfileExport_YYYYMMDD_HH24miss.xlsx)

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    # Input Text :  ${inputTxt_Search}  ${TaxID}
    # Click Element :  ${btn_Search}
    # Click Menu Quick
   
    Click Export File Excel And Verify File Name   # Excel (Format : DBDProfileExport_YYYYMMDD_HH24miss.xlsx)
    Capture Page Screenshot

MyCorporate_DBDProfile_pattp070121001_004
        [Tags]      pattp070121001_004
        [Documentation]
        ...     TEST DESCRIPTION:    
        ...     MyCorporate - DBD Profile  ${\n}
        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม แว่นขยาย  ${\n}
        ...     หน้าจอ Panel Result
        ...     -> ปุ่มแว่นขยาย (หน้า Result Detail)
        ...     หน้า Result Detail
        ...     -> Tab ข้อมูลนิติบุคคล
        ...     Expected Result
        ...     -> สลับน้า Result แสดงหน้า Result Detail ประกอบไปด้วยส่วนต่างๆ ดังนี้
        ...     -> ยังคงแสดง Panel : Search อยู่
        ...     -> ปุ่ม Back
        ...     -> Tab ข้อมูลนิติบุคคล (Default Tab)
        ...     -> Tab งบการเงิน
        ...     -> Tab รายชื่อกรรมการและผู้ถือหุ้น

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    # Input Text :  ${inputTxt_Search}  ${TaxID}
    # Click Element :  ${btn_Search}
    # Click Menu Quick
    
    Click Element :  ${magnifyingGlass}  

    Validate List Data And Should Be Visible :  ${list_verify_ResultDetail}
    Capture Page Screenshot
          
MyCorporate_DBDProfile_pattp070121001_005
        [Tags]      pattp070121001_005
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     MyCorporate - DBD Profile  ${\n}
        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม แว่นขยาย
        ...     4. คลิก Tab ข้อมูลนิติบุคคล
        ...     หน้า Result Detail
        ...     -> Tab ข้อมูลนิติบุคคล
        ...     Expected Result
        ...     -> แสดงข้อมูล 3 ส่วน
        ...     1. ข้อมูลนิติบุคคล
        ...     2. ข้อมูลวัตถุประสงค์
        ...     3. ข้อมูลที่ตั้ง

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    # Input Text :  ${inputTxt_Search}  ${TaxID}
    # Click Element :  ${btn_Search}
    # Click Menu Quick

    # Click Element :  ${magnifyingGlass}  

    Wait Until Element and Should Be Visible  ${part_personInformation}
    Wait Until Element and Should Be Visible  ${part_objectiveInformation}
    Wait Until Element and Should Be Visible  ${part_location_information}
    Capture Page Screenshot

MyCorporate_DBDProfile_pattp070121001_006
        [Tags]      pattp070121001_006
        [Documentation]

        ...     TEST DESCRIPTION:
        ...     MyCorporate - DBD Profile  ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม แว่นขยาย
        ...     4. คลิก Tab ข้อมูลนิติบุคคล
        ...     5. ตรวจสอบ ตาราง ข้อมูลนิติบุคคล ${\n}

        ...     expected_result_udf

        ...     Tab ข้อมูลนิติบุคคล
        ...     -> ข้อมูลนิติบุคคล
     
        ...     Expected Result
        ...     -> ประกอบไปด้วย
        ...     เลขทะเบียน : 
        ...     ชื่อนิติบุคคล : 
        ...     วันที่จดทะเบียน : 
        ...     สถานะนิติบุคคล : 
        ...     วันทีจดเปลี่ยนสถานะ : 
        ...     ทุนจดทะเบียน : 

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    # Input Text :  ${inputTxt_Search}  ${TaxID}
    # Click Element :  ${btn_Search}
    # Click Menu Quick

    # Click Element :  ${magnifyingGlass}  

    Scroll Move custom  300
    Validate List Data And Should Be Visible :  ${list_JuristicInformation}
    Capture Page Screenshot 
	 
MyCorporate_DBDProfile_pattp070121001_007
        [Tags]      pattp070121001_007
        [Documentation]

        ...     TEST DESCRIPTION:
        ...     MyCorporate - DBD Profile  ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม แว่นขยาย
        ...     4. คลิก Tab ข้อมูลนิติบุคคล
        ...     5. ตรวจสอบ ตาราง ข้อมูลวัตถุประสงค์ ${\n}

        ...     expected_result_udf

        ...     Tab ข้อมูลนิติบุคคล
        ...     -> ข้อมูลวัตถุประสงค์
     
        ...     Expected Result
        ...     -> ประกอบไปด้วย
        ...     กลุ่มรหัสวัตถุประสงค์ :
        ...     รหัสวัตถุประสงค์ : 
        ...     รายละเอียดวัตถุประสงค์ : 
        ...     วันที่เปลี่ยนแปลงวัตถุประสงค์ : 


    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    # Input Text :  ${inputTxt_Search}  ${TaxID}
    # Click Element :  ${btn_Search}
    # Click Menu Quick

    # Click Element :  ${magnifyingGlass}  

    Scroll Height
    Validate List Data And Should Be Visible :  ${list_Data_ObjectiveInformation}
    Capture Page Screenshot 	

MyCorporate_DBDProfile_pattp070121001_008
        [Tags]      pattp070121001_008
        [Documentation]

        ...     TEST DESCRIPTION:
        ...     MyCorporate - DBD Profile  ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม แว่นขยาย
        ...     4. คลิก Tab ข้อมูลนิติบุคคล
        ...     5. ตรวจสอบ ตาราง ข้อมูลที่ตั้ง ${\n}

        ...     expected_result_udf

        ...     Tab ข้อมูลนิติบุคคล
        ...     -> ข้อมูลที่ตั้ง
     
        ...     Expected Result
        ...     -> ประกอบไปด้วย
        ...     ที่ตั้ง : 
        ...     ตำบล : 
        ...     อำเภอ : 
        ...     จังหวัด : 
        ...     รหัสไปรษณีย์ : 
        ...     วันที่เปลี่ยนแปลงที่ตั้ง : 

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    # Input Text :  ${inputTxt_Search}  ${TaxID}
    # Click Element :  ${btn_Search}
    # Click Menu Quick

    # Click Element :  ${magnifyingGlass}  
    
    # Scroll Height
    Validate List Data And Should Be Visible :  ${list_location_information}
    Capture Page Screenshot 

MyCorporate_DBDProfile_pattp070121001_009
        [Tags]      pattp070121001_009
        [Documentation]

        ...     TEST DESCRIPTION:
        ...     MyCorporate - DBD Profile  ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม แว่นขยาย
        ...     4. คลิก Tab งบการเงิน  ${\n}

        ...     expected_result_udf
        ...     หน้า Result Detail
        ...     Tab งบการเงิน
     
        ...     Expected Result
        ...     -> Table งบดุบ
        ...     -> Table งบกำไรขาดทุน

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    # Input Text :  ${inputTxt_Search}  ${TaxID}
    # Click Element :  ${btn_Search}
    # Click Menu Quick

    # Click Element :  ${magnifyingGlass}  

    Click Element :  ${FinancialTabBtn}

    Scroll Move custom  500
    Wait Until Element and Should Be Visible  ${part_statement}
    Wait Until Element and Should Be Visible  ${part_incomeStatement}
    Capture Page Screenshot

MyCorporate_DBDProfile_pattp070121001_010
        [Tags]      pattp070121001_010
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     MyCorporate - DBD Profile  ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม แว่นขยาย
        ...     4. คลิก Tab งบการเงิน  
        ...     5. ตรวจสอบ ตาราง งบดุล   ${\n}

        ...     expected_result_udf
        ...     Tab งบการเงิน
        ...     -> งบดุบ

        ...     Expected Result
        ...     -> ประกอบไปด้วย (Format : currency ทศนิยม 2 ตำแหน่ง)
        ...     ทุนจดทะเบียน (งบ) 					
        ...     ทุนชำระแล้ว (งบ) 					
        ...     ที่ดินอาคารและอุปกรณ์ 					
        ...     สินทรัพย์หมุนเวียน 						
        ...     สินทรัพย์ 					
        ...     ลูกหนี้การค้าและตั๋วเงินรับ 					
        ...     หนี้สินหมุนเวียน 					
        ...     หนี้สิน 					
        ...     สินค้าคงเหลือ 				
        ...     ส่วนของผู้เป็นหุ้นส่วน/ผู้ถือหุ้น 				
        ...     รวมหนี้สินและส่วนของผู้เป็นหุ้นส่วน/ผู้ถือหุ้น

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    # Input Text :  ${inputTxt_Search}  ${TaxID}
    # Click Element :  ${btn_Search}
    # Click Menu Quick

    # Click Element :  ${magnifyingGlass}  

    # Click Element :  ${FinancialTabBtn}

    # Scroll Move custom  500
    Validate List Data And Should Be Visible :  ${list_Data_statement}
    Validate decimal point :  ${list_id_statement}

    Capture Page Screenshot

MyCorporate_DBDProfile_pattp070121001_011
        [Tags]      pattp070121001_011
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     MyCorporate - DBD Profile  ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม แว่นขยาย
        ...     4. คลิก Tab งบการเงิน
        ...     5. ตรวจสอบ ตาราง งบดุล   ${\n}

        ...     expected_result_udf
        ...     Tab งบการเงิน
        ...     -> งบกำไรขาดทุน
        ...     Expected Result
        ...     -> ประกอบไปด้วย (Format : currency ทศนิยม 2 ตำแหน่ง)
        ...     รายได้ 					
        ...     รายได้หลัก 					
        ...     รายจ่าย				
        ...     ต้นทุนขาย 						
        ...     ค่าใช้จ่ายในการขายและบริการ 					
        ...     ดอกเบี้ยจ่าย 					
        ...     ภาษีเงินได้ 					
        ...     กำไรขั้นต้น 					
        ...     กำไรสุทธิ 					
        ...     ขาดทุนสุทธิ 					
        ...     กำไรต่อหุ้น 					
        ...     ขาดทุนต่อหุ้น 					
        ...     รายได้จากการขาย 					
        ...     รายได้จากการบริการ 						
        ...     รายได้จากการขายหรือบริการ 						
        ...     รายได้อื่น 						
        ...     ต้นทุนการให้บริการ 					
        ...     ต้นทุนขายหรือต้นทุนการให้บริการ 					
        ...     การเปลี่ยนแปลงในสินค้าสำเร็จรูปและงานระหว่างทำ 				
        ...     วัตถุดิบและวัสดุสินค้าสิ้นเปลืองใช้ไป 					
        ...     กำไร (ขาดทุน) ก่อนต้นทุนทางการเงินและภาษีเงินได้ 			
        ...     ส่วนแบ่งกำไร (ขาดทุน) จากเงินลงทุนในบริษัทร่วม การร่วมค้า 			
        ...     กำไร (ขาดทุน) ต่อหุ้นปรับลด 						
        ...     ค่าใช้จ่ายในการขาย 						
        ...     ค่าใช้จ่ายในการบริหาร 					
        ...     ค่าใช้จ่ายในการขายหรือบริหาร 						
        ...     งานที่กิจกรรมทำและถือเป็นรายจ่ายฝ่ายทุน 					
        ...     ค่าตอบแทนผู้บริหาร 						
        ...     ค่าใช้จายพนักงาน 					
        ...     ค่าเสื่อมราคาและค่าตัดจำหน่าย 	 					
        ...     ขาดทุนจากการด้อยค่าของสินทรัพย์ 						
        ...     ค่าใช้จ่ายอื่น 						
        ...     ส่วนที่เป็นผู้ถือหุ้นบริษัทใหญ่ 						
        ...     ส่วนที่เป็นผู้ถือหุ้นส่วนน้อย 						
        ...     กำไร (ขาดทุน) ก่อนภาษีเงินได้

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    # Input Text :  ${inputTxt_Search}  ${TaxID}
    # Click Element :  ${btn_Search}
    # Click Menu Quick

    # Click Element :  ${magnifyingGlass}  

    # Click Element :  ${FinancialTabBtn}

    # Scroll Move custom  500
    Validate List Data And Should Be Visible :  ${list_Field_Financial}
    Validate decimal point :  ${list_id_Financial}    # check (Format : currency ทศนิยม 2 ตำแหน่ง)
    
    Capture Page Screenshot

MyCorporate_DBDProfile_pattp070121001_012
        [Tags]      pattp070121001_012
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     MyCorporate - DBD Profile  ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม แว่นขยาย
        ...     4. คลิก Tab รายชื่อกรรมการและผู้ถือหุ้น  ${\n}

        ...     expected_result_udf
        ...     หน้า Result Detail
        ...     -> Tab รายชื่อกรรมการและผู้ถือหุ้น

        ...     Expected Result
        ...     -> ช่อง Search
        ...     -> แสดงตารางข้อมูล ดังนี้
        ...     คำนำหน้า 
        ...     ชื่อ
        ...     นามสกุล 
        ...     ประเภท 
        ...     จำนวนหุ้นที่ถือ  (Format : currency ทศนิยม 0 ตำแหน่ง)

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    # Input Text :  ${inputTxt_Search}  ${TaxID}
    # Click Element :  ${btn_Search}
    # Click Menu Quick

    # Click Element :  ${magnifyingGlass}  

    # Click Element :  ${FinancialTabBtn}

    Click Element :  ${ContactTabBtn}
    
    Scroll Move custom  500
    Validate List Data And Should Be Visible :  ${list_directorsAndshareholders}
    Validate float None :  ${_contains_total}    # จำนวนหุ้นที่ถือ  (Format : currency ทศนิยม 0 ตำแหน่ง)

    Capture Page Screenshot

MyCorporate_DBDProfile_pattp070121001_013
        [Tags]      pattp070121001_013
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     MyCorporate - DBD Profile  ${\n}

        ...     TEST STEPS: 
        ...     1. ระบุ Keyword ที่ช่อง Search : "0105556096057"
        ...     2. คลิกปุ่ม Search
        ...     3. คลิกปุ่ม แว่นขยาย
        ...     4. คลิก Tab รายชื่อกรรมการและผู้ถือหุ้น
        ...     5. ระบุ Keyword ที่ช่อง Search : "สรายุทธ"   ${\n}

        ...     expected_result_udf
        ...     หน้า Result Detail
        ...     -> ช่อง Search

        ...     Expected Result
        ...     -> Filter ข้อมูลในตาราง โดย Filter จาก Column คำนำหน้า, ชื่อ, นามสกุล, ประเภท

    # Open web and user login :  ${url_mycorporate}  ${User_chanawam}
    # Select Menu :  ${Menu_DBD}
    # Select Menu :  ${SubMenu_DBDProflie}
    
    # Input Text :  ${inputTxt_Search}  ${TaxID}
    # Click Element :  ${btn_Search}
    # Click Menu Quick

    # Click Element :  ${magnifyingGlass}  

    # Click Element :  ${FinancialTabBtn}

    # Click Element :  ${ContactTabBtn}

    Input Text :  ${ContactFilter}  ${Data_ContactName}
    
    Validate Contact Filter in Table
    Capture Page Screenshot









        

