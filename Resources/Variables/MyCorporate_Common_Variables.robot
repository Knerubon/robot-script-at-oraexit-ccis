*** Variables ***

@{_loc_loading}
...  class:loading
# ...  id:loading_popup_portal 
# ...  id:loading_popup_portal2
# ...  id:loadding_popup_admin  

${CONTACT_SEARCH_VALUE}  id:DESKTOP_CONTACT_SEARCH_VALUE
${SearchContactBTN}  id:DESKTOP_SearchContactBTN
${AddContactListBody}  id:DESKTOP_AddContactListBody
${select_contact_row1}  //*[@id="DESKTOP_AddContactListBody"]/div/div
${panel_ContactType}  id:edit_contact
${SaveSelectContact}  id:DESKTOP_SaveSelectContact
${list_contactType}  id:edit_contactType
${panel_ServiceRole}  id:edit_stage_role
${AddStage_ServiceRole}  //input[contains(@onclick,'editAddStage()')]
${tb_edit_Stage_Body}  id:tb_edit_Stage_Body
${panel_AuthorizeCategory}  id:edit_remark
${chk_Categoryregister}  //div[contains(@id,'edit_con_unchk_02')]
${SaveAddEditContactBtn}  //input[contains(@onclick,'SaveAddEditContactBtn()')]
@{list_PopupConfirm}
...  ${Topic_Confirm}
...  ${Message_Confirm_body} 
...  ${Button_Confirm_cancel}
...  ${Button_Confirm}
${Topic_Confirm}  //*[@id="modal_Confirm"]/div/div/div[1]/p
${Message_Confirm_body}   id:modal_Confirm_body
${Button_Confirm_cancel}  (//input[contains(@value,'ยกเลิก')])[3]
${Button_Confirm}  id:modal_Confirm_btn
${del_contact_row1}  //*[@id="contactListBody"]/tr/th/div[2]/a
${confirm_del}  //button[contains(@onclick,'confirm_del()')]
${AddNewContactBTN}  id:DESKTOP_AddNewContactBTN
${Contact_MobileNo1}  id:Contact_MobileNo1
${edit_contact_row1}  //*[@id="contactListBody"]/tr[1]/th/div[1]/a
@{list_panel_ediitContact}
...  (//b[contains(.,'Contact')])[4]
...  id:ContactSubPanel_body
...  id:edit_available
...  id:edit_stage_role
...  id:edit_keyfunc
...  id:edit_mh
...  id:edit_sa
...  id:edit_ba
...  id:edit_ma
...  id:edit_remark
...  //*[@id="EditContactPanel"]/div/p/input[1]
...  //input[contains(@onclick,'SaveAddEditContactBtn()')]
@{list_panelContact_filed}
...  Title : *
...  First Name (TH) : *
...  First Name (EN) : *
...  ID Type :
...  Birthdate :
...  Mobile No. 1 : *
...  Office No. : *
...  Home No. : *
...  Title Other :
...  Last Name (TH) : *
...  Last Name (EN) : *
...  ID Number :
...  Email :
...  Mobile No. 2 :
...  Fax No. :
...  Position :
${_classPanelContact}  col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact
@{list_panelContact_Element}
...  id:Contact_Title
...  id:Contact_TitleOther
...  id:Contact_FirstNameTH
...  id:Contact_LastNameTH
...  id:Contact_FirstNameEN
...  id:Contact_LastNameEN
...  id:Contact_IDType
...  id:Contact_IDNumber
...  id:Contact_Birthdate_Des
...  //*[@id="Contact_Email_MULTIPLE_EMAIL"]/div[1]
...  id:Contact_MobileNo1
...  id:Contact_MobileNo2
...  id:Contact_OfficeNo
...  id:Contact_FaxNo
...  id:Contact_HomeNo
...  id:Contact_Position
...  id:Contact_Department
@{list_panelContactType_Element}
...  id:edit_contactType
...  id:edit_contactPriority
...  id:edit_SKAChk
...  id:txt_editPassword
...  (//div[contains(@class,'ddlContactType')])[1]
...  (//div[contains(@class,'ddlContactPriority')])[1]
...  (//div[contains(@class,'chkSKAContact')])[1]
...  (//div[contains(@class,'txtPassword')])[1]
${panel_available}  id:edit_available
@{list_panelAvailable_filed}
...  วันที่สามารถติดต่อได้ :
...  ช่วงเวลาที่สามารถติดต่อได้ :
${_classPanelAvailable}  col-xs-12 col-sm-3 col-md-3 col-lg-2 div-topic-contact
@{list_panelAvailable_Element}
...  name:edit_AvailableFlag
...  id:edit_cb_sun
...  id:dtp_editTime1
...  id:dtp_editTime2
...  id:edit_btnAvailableTime
@{list_panelServiceRole_filed}
...  Stage : *
...  Role :
...  Service :
...  Func. :
${_classPanelServiceRole}  col-xs-12 col-sm-1 col-md-1 col-lg-1 div-topic-contact
@{list_panelServiceRole_Element}
...  id:edit_stageType
...  id:edit_serviceType
...  id:edit_roleType
...  id:edit_funcType
${panel_MobileHolder}  id:edit_mh
@{list_panelMobileHolder_Element}
...  id:txt_editMHNo
...  //input[contains(@onclick,'editAddMH()')]
...  (//th[@class='thead-padding text-center'][contains(.,'Mobile No.')])[1]
...  (//th[@class='thead-padding text-center'][contains(.,'Mobile Status')])[1]
...  (//th[@class='thead-padding text-center'][contains(.,'Status Date')])[1]
@{list_panelSA_Element}
...  id:txt_editSANo
...  //input[contains(@onclick,'editAddSA()')]
...  (//th[@class='thead-padding text-center'][contains(.,'SA Number')])[1]
...  (//th[@class='thead-padding text-center'][contains(.,'SA Name')])[1]
...  (//th[@class='thead-padding text-center'][contains(.,'SA Status')])[1]
@{list_panelBA_Element}
...  //input[contains(@onclick,'editAddBA()')]
...  id:txt_editBANo
...  (//th[@class='thead-padding text-center'][contains(.,'BA Number')])[1]
...  (//th[@class='thead-padding text-center'][contains(.,'BA Name')])[1]
...  (//th[@class='thead-padding text-center'][contains(.,'BA Status')])[1]
@{list_panelMA_Element}
...  id:txt_editMANo
...  //input[contains(@onclick,'editAddMA()')]
...  (//th[@class='thead-padding text-center'][contains(.,'Mobile No.')])[2]
...  (//th[@class='thead-padding text-center'][contains(.,'Mobile Status')])[2]
...  (//th[@class='thead-padding text-center'][contains(.,'Status Date')])[2]
@{list_panelAuthorizeCategory_Element}
...  (//th[@class='thead-padding text-center'][contains(.,'Select')])[1]
...  (//th[@class='thead-padding text-center'][contains(.,'Authorize Category')])[1]
...  (//th[@class='thead-padding text-center'][contains(.,'Send Mail To Authorize')])[1]
...  id:tb_edit_Remark
${EditContact_buttonBack}  (//input[contains(@value,'Back')])[2]
${contact2}    (//td[@class='text-left'][contains(.,'สมภพ')])[1]


#menu_quick
${menu_quick}  //div[contains(@onclick,'toggleMenu()')]

#loading
${loc_loading}    //div[@class='loading'][contains(@id,'portal')]  
${loading_popup_portal}  id:loading_popup_portal  
${loadding_popup_admin}  id:loadding_popup_admin

@{_loc_loading}
...  class:loading
# ...  ${loc_loading}
# ...  ${loading_popup_portal}
# ...  ${loadding_popup_admin}  

# Login Page
${loc_inputTxtusername}  id:user_admin
${loc_inputTxtpassword}  id:pass_admin

${loc_buttonSubmit}  id:button_submit_admin

#Menu
${Menu_DBD}  (//a[@data-toggle='collapse'][contains(.,'DBD')])[2]
${SubMenu_DBDProflie}  (//a[contains(.,'• DBDProfile')])[2]

${Menu Contact Management}  id:A586C3ABF1C769C1E054002128FA990A
${Menu Manage Contact}  id:A586C3ABF1C869C1E054002128FA990A

#DBD Profile
${title_DBDProfile}  //div[@class='title-1 _brown text-left'][contains(.,'DBD Profile')]
${TextSearch}  //div[@class='title-2 _orange'][contains(.,'Search')]
${FieldName_Search}  (//span[contains(.,'Search :')])[1]
${inputTxt_Search}  id:SEARCH_TEXT
${btn_Search}  //input[contains(@value,'Search')]
${btn_Cancel}  //input[contains(@value,'Cancel')]
${SearchPanel_DBDProfile}  id:SearchPanel

@{PanelSearchDBDProfile}
# ...  ${title_DBDProfile}
# ...  ${TextSearch}
# ...  ${FieldName_Search}
...  ${inputTxt_Search}
...  ${btn_Search}
...  ${btn_Cancel}

#Result DBD Profile
${Result_Panel}  id:Result_Panel
${ButtonExport}  //button[@class='btn btn-primary'][contains(.,'Export')]
${ResultFilter}  id:ResultFilter
${registrationNum}  //td[@class='text-left'][contains(.,'0105556096057')]
${companyName}  //td[@class='text-left'][contains(.,'บจ.ปตท. โกลบอล แมนเนจเม้นท์ จำกัด')]
${business_status}  //td[@class='text-left'][contains(.,'ดำเนินการ')]
${business_type}  //td[@class='text-left'][contains(.,'ลงทุนโดยการเข้าเป็นหุ้นส่วนจำพวกจำกัดความรับผิดในห้างหุ้นส่วน หรือเป็นผู้ถือหุ้นในบริษัทจำกัด หรือบริษัทมหาชนจำกัดใดๆ ทั้งภายในและภายนอกราชอาณาจักร')]
${business_province}  //td[@class='text-center'][contains(.,'กรุงเทพมหานคร')]
${registration_date}  //td[@class='text-center'][contains(.,'17/06/2013')]
${RegisteredCapital}  (//td[contains(@class,'text-right')])[1]
${magnifyingGlass}  //a[contains(@class,'btn btn-info btn-true')]

@{list_ResultDBDProfile}
...  //button[contains(@onclick,'ExportResult()')] 			
...  //th[contains(.,'เลขทะเบียน')]  			
...  //th[contains(.,'ชื่อนิติบุคคล')]  		
...  //th[contains(.,'สถานะ')]  			
...  //th[contains(.,'ประเภทธุรกิจ')]  		
...  //th[contains(.,'จังหวัด')]  			
...  //th[contains(.,'วันที่จดทะเบียน')]  		
...  //th[contains(.,'ทุนจดทะเบียน')]  		
...  id:ResultBody 		
...  //a[@class='btn btn-info btn-true']

#Path Export File Excel
${path_download}        ${CURDIR}//..//Keywords//Download
${path_logdownload}        ${CURDIR}//..//Test_Data//Download_log

# ${xpath_download}  ..\\Resources\\Test_Data\\Download


#Panel ResultDetail in DBD Profile page
${button_back}  //button[@class='btn btn-info'][contains(.,'Back')]
${tab_Detail}  id:DetailTabBtn
${tab_Financial}  id:FinancialTabBtn
${tab_Contact}  id:ContactTabBtn
${Default_TabDetail_registerNo}  id:BUSINESS_REGIST_NUM

@{list_verify_ResultDetail}
...  ${SearchPanel_DBDProfile}     #Panel Search DBDProfile
...  ${button_back}
...  ${tab_Detail}
...  ${tab_Financial}
...  ${tab_Contact}
# ...  ${Default_TabDetail_registerNo}     #Verify Tab Detail Register Number

# -----> Tab ข้อมูลนิติบุคคล > ข้อมูลนิติบุคคล
${part_personInformation}  //th[@class='thead-padding text-left'][contains(.,'ข้อมูลนิติบุคคล')]       # part ข้อมูลนิติบุคคล

@{list_JuristicInformation}
## Field
...  //td[@class='thead-padding text-left'][contains(.,'เลขทะเบียน:')]
...  //td[@class='thead-padding text-left'][contains(.,'ชื่อนิติบุคคล:')]
...  //td[@class='thead-padding text-left'][contains(.,'วันที่จดทะเบียน:')]
...  //td[@class='thead-padding text-left'][contains(.,'สถานะนิติบุคคล:')]
...  //td[@class='thead-padding text-left'][contains(.,'วันที่จดเปลี่ยนสถานะ:')]
...  //td[@class='thead-padding text-left'][contains(.,'ทุนจดทะเบียน:')]
## Element
...  id:BUSINESS_REGIST_NUM
...  id:REGIST_NAME
...  id:REGIST_DATE
...  id:BUSINESS_STATUS_DESC
...  id:BUSINESS_STATUS_DATE
...  id:REGIST_CAPITAL

## Check data 
${registration_Number}  //td[contains(@id,'NUM')][@class='thead-padding text-left'][contains(.,'0105556096057')]
${Registered_Capital}  //td[contains(@id,'CAPITAL')][@class='thead-padding text-left'][contains(.,'54,497,049,300.00')]
# ${class_registration_Number}  calss:thead-padding text-left
${ResultDetail_Panel}  id:ResultDetail_Panel

# -----> Tab ข้อมูลนิติบุคคล > ข้อมูลวัตถุประสงค์
${part_objectiveInformation}  //th[@class='thead-padding text-left'][contains(.,'ข้อมูลวัตถุประสงค์')]  # part ข้อมูลวัตถุประสงค์

@{list_Data_ObjectiveInformation}
##Field
...  //td[@class='thead-padding text-left'][contains(.,'กลุ่มรหัสวัตถุประสงค์:')]
...  (//td[@class='thead-padding text-left'][contains(.,'รหัสวัตถุประสงค์:')])[2]
...  //td[@class='thead-padding text-left'][contains(.,'รายละเอียดวัตถุประสงค์:')]
...  //td[@class='thead-padding text-left'][contains(.,'วันที่เปลี่ยนแปลงวัตถุประสงค์:')]

#Element
...  id:TSIC_GROUP_CODE
...  id:TSIC_CODE
...  id:TSIC_DETAILS
...  id:TSIC_UPDATE_DATE

# -----> Tab ข้อมูลนิติบุคคล > ข้อมูลที่ตั้ง
${part_location_information}  //th[@class='thead-padding text-left'][contains(.,'ข้อมูลที่ตั้ง')]        # part ข้อมูลที่ตั้ง

@{list_location_information}
##Field
...  (//td[@class='thead-padding text-left'][contains(.,'ที่ตั้ง:')])[1]
...  //td[@class='thead-padding text-left'][contains(.,'ตำบล:')] 
...  //td[@class='thead-padding text-left'][contains(.,'อำเภอ:')]
...  //td[@class='thead-padding text-left'][contains(.,'จังหวัด:')]
...  //td[@class='thead-padding text-left'][contains(.,'รหัสไปรษณีย์:')]
...  //td[@class='thead-padding text-left'][contains(.,'วันที่เปลี่ยนแปลงที่ตั้ง:')]

##Element
...  id:HQ_ADDRESS
...  id:HQ_TUMBOL_NAME
...  id:HQ_AMPHUR_NAME
...  id:HQ_PROVINCE_NAME
...  id:HQ_POSTCODE
...  id:UPDATE_HQ_ADDRESS_DATE

# -----> Tab งบการเงิน > ข้อมูลงบดุล ---------------------------------------------------------------------------------------------
${FinancialTabBtn}  id:FinancialTabBtn
${part_statement}  //th[@class='thead-padding text-left'][contains(.,'ข้อมูลงบดุล')]

@{list_Data_statement}
## Field
...  //td[@class='thead-padding text-left'][contains(.,'ทุนจดทะเบียน (งบ)')]
...  //td[@class='thead-padding text-left'][contains(.,'ทุนชำระแล้ว (งบ)')]
...  //td[@class='thead-padding text-left'][contains(.,'ที่ดินอาคารและอุปกรณ์')]
...  //td[@class='thead-padding text-left'][contains(.,'สินทรัพย์หมุนเวียน')]
...  (//td[@class='thead-padding text-left'][contains(.,'สินทรัพย์')])[2]
...  //td[@class='thead-padding text-left'][contains(.,'ลูกหนี้การค้าและตั๋วเงินรับ')]
...  //td[@class='thead-padding text-left'][contains(.,'หนี้สินหมุนเวียน')]
...  (//td[@class='thead-padding text-left'][contains(.,'หนี้สิน')])[2]
...  //td[@class='thead-padding text-left'][contains(.,'สินค้าคงเหลือ')]
...  (//td[@class='thead-padding text-left'][contains(.,'ส่วนของผู้เป็นหุ้นส่วน/ผู้ถือหุ้น')])[1]
...  //td[@class='thead-padding text-left'][contains(.,'รวมหนี้สินและส่วนของผู้เป็นหุ้นส่วน/ผู้ถือหุ้น')]

## Element
...  id:REGIST_CAPITAL_2
...  id:PAID_CAPITAL
...  id:LAND_EQUIPMENT
...  id:CURR_ASSET
...  id:ASSET
...  id:ACCNT_NOTE_RECEIVABLE
...  id:CURR_LIABILITY
...  id:LIABILITY
...  id:INVENTORY
...  id:PARTNER_EQUITY
...  id:TOTAL_LIABI_SHARE

## Data
@{list_id_statement}
...  //td[contains(@id,'2')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'660,000,000.00')]
...  (//td[contains(@id,'CAPITAL')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'660,000,000.00')])[2]
...  //td[contains(@id,'EQUIPMENT')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'131,431,663.00')]
...  //td[contains(.,'29,772,690.00')]
...  //td[@class='thead-padding text-right CHECK_TITLE'][contains(.,'161,204,353.00')]
...  //td[contains(.,'13,273.00')]
...  (//td[contains(@id,'LIABILITY')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'6,469,330.00')])[1]
...  (//td[@class='thead-padding text-right CHECK_TITLE'][contains(.,'6,469,330.00')])[2]
...  (//td[@class='thead-padding text-right CHECK_TITLE'][contains(.,'0.00')])[6]
...  //td[contains(@id,'EQUITY')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'620,035,023.00')]
...  //td[contains(@id,'SHARE')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'626,504,353.00')]


# -----> Tab งบการเงิน > ข้อมูลงบกำไรขาดทุน
${part_incomeStatement}  //th[@class='thead-padding text-left'][contains(.,'ข้อมูลงบกำไรขาดทุน')]

@{list_Field_Financial}
##Field
...  (//td[@class='thead-padding text-left'][contains(.,'รายได้')])[1]
...  //td[@class='thead-padding text-left'][contains(.,'รายได้หลัก')]
...  (//td[@class='thead-padding text-left'][contains(.,'รายจ่าย')])[1]
...  (//td[@class='thead-padding text-left'][contains(.,'ต้นทุนขาย')])[1]
...  //td[@class='thead-padding text-left'][contains(.,'ค่าใช้จ่ายในการขายและบริการ')]
...  //td[@class='thead-padding text-left'][contains(.,'ดอกเบี้ยจ่าย')]
...  (//td[@class='thead-padding text-left'][contains(.,'ภาษีเงินได้')])[1]
...  //td[@class='thead-padding text-left'][contains(.,'กำไรขั้นต้น')]
...  //td[@class='thead-padding text-left'][contains(.,'กำไรสุทธิ')]
...  //td[@class='thead-padding text-left'][contains(.,'ขาดทุนสุทธิ')]
...  //td[@class='thead-padding text-left'][contains(.,'กำไรต่อหุ้น')]
...  //td[@class='thead-padding text-left'][contains(.,'ขาดทุนต่อหุ้น')]
...  (//td[@class='thead-padding text-left'][contains(.,'รายได้จากการขาย')])[1]
...  //td[@class='thead-padding text-left'][contains(.,'รายได้จากการบริการ')]
...  //td[@class='thead-padding text-left'][contains(.,'รายได้จากการขายหรือบริการ')]
...  //td[@class='thead-padding text-left'][contains(.,'รายได้อื่น')]
...  (//td[@class='thead-padding text-left'][contains(.,'ต้นทุนการให้บริการ')])[1]
...  //td[@class='thead-padding text-left'][contains(.,'ต้นทุนขายหรือต้นทุนการให้บริการ')]
...  //td[@class='thead-padding text-left'][contains(.,'การเปลี่ยนแปลงในสินค้าสำเร็จรูปและงานระหว่างทำ')]
...  //td[@class='thead-padding text-left'][contains(.,'วัตถุดิบและวัสดุสินค้าสิ้นเปลืองใช้ไป')]
...  //td[@class='thead-padding text-left'][contains(.,'กำไร (ขาดทุน) ก่อนต้นทุนทางการเงินและภาษีเงินได้')]
...  //td[@class='thead-padding text-left'][contains(.,'ส่วนแบ่งกำไร (ขาดทุน) จากเงินลงทุนในบริษัทร่วม การร่วมค้า')]
...  //td[@class='thead-padding text-left'][contains(.,'กำไร (ขาดทุน) ต่อหุ้นปรับลด')]
...  (//td[@class='thead-padding text-left'][contains(.,'ค่าใช้จ่ายในการขาย')])[2]
...  //td[@class='thead-padding text-left'][contains(.,'ค่าใช้จ่ายในการบริหาร')]
...  //td[@class='thead-padding text-left'][contains(.,'ค่าใช้จ่ายในการขายหรือบริหาร')]
...  //td[@class='thead-padding text-left'][contains(.,'งานที่กิจกรรมทำและถือเป็นรายจ่ายฝ่ายทุน')]
...  //td[@class='thead-padding text-left'][contains(.,'ค่าตอบแทนผู้บริหาร')]
...  //td[@class='thead-padding text-left'][contains(.,'ค่าใช้จายพนักงาน')]
...  //td[@class='thead-padding text-left'][contains(.,'ค่าเสื่อมราคาและค่าตัดจำหน่าย')]
...  //td[@class='thead-padding text-left'][contains(.,'ขาดทุนจากการด้อยค่าของสินทรัพย์')]
...  //td[@class='thead-padding text-left'][contains(.,'ค่าใช้จ่ายอื่น')]
...  //td[@class='thead-padding text-left'][contains(.,'ส่วนที่เป็นผู้ถือหุ้นบริษัทใหญ่')]
...  //td[@class='thead-padding text-left'][contains(.,'ส่วนที่เป็นผู้ถือหุ้นส่วนน้อย')]
...  //td[@class='thead-padding text-left'][contains(.,'กำไร (ขาดทุน) ก่อนภาษีเงินได้')]

##Element
...  id:REVENUE
...  id:MAIN_REVENUE  							
...  id:EXPENSE  							
...  id:COST_SALE						
...  id:SALE_SERV_EXPENSE  				
...  id:INTEREST  					
...  id:INCOME_TAX  							
...  id:GROSS_PROFIT  						
...  id:NET_PROFIT  							
...  id:NET_LOSS 							
...  id:PROFIT_PER_SHARE 						
...  id:LOSS_PER_SHARE 						
...  id:REVENUE_SALE  						
...  id:REVENUE_SERVICE 						
...  id:REVENUE_SALE_OR_SERVICE		
...  id:OTHER_INCOME 						
...  id:COST_SERVICE 						
...  id:COST_SALE_OR_SERVICE						
...  id:CHANGE_INVENTORY_GOODS_WIP  				
...  id:RAW_MATERIAL 						
...  id:PROFIT_BEFORE_COST_INCOME_TAX				
...  id:SHARE_PROFIT_JOINT_VENTURE  			
...  id:DILUTED_EARNING_PER_SHARE 					
...  id:SALE_EXPENSE					
...  id:ADMIN_EXPENSE 			
...  id:SALE_ADMIN_EXPENSE 			
...  id:CAPITAL_EXPENDITURE   					
...  id:MANAGEMENT_BENEFIT_EXPENSE  				
...  id:STAFF_COST				
...  id:DEPRECIATION_DISPOSAL_ASSET		
...  id:LOSS_OBSOLETE_ASSET 		
...  id:OTHER_EXPENSE  						
...  id:PROFIT_ATTR_OWNER_COMPANY  	
...  id:PROFIT_ATTR_NON_CONTROLLING  				
...  id:PROFIT_BEFORE_INCOME_TAX 			

##Data
@{list_id_Financial}
...  //td[@class='thead-padding text-right CHECK_TITLE'][contains(.,'295,253.00')]  	 
...  //td[contains(@id,'REVENUE')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'0.00')] 				 		
...  //td[@class='thead-padding text-right CHECK_TITLE'][contains(.,'21,892,817.00')]  							
...  (//td[contains(@id,'SALE')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'0.00')])[1]  					
...  //td[contains(@id,'EXPENSE')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'0.00')]  				
...  (//td[@class='thead-padding text-right CHECK_TITLE'][contains(.,'0.00')])[10]  				
...  //td[contains(@id,'TAX')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'0.00')]  						
...  //td[contains(@id,'PROFIT')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'0.00')]  						
...  //td[contains(@id,'PROFIT')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'-21,597,564.00')]  						
...  //td[contains(@id,'LOSS')][@class='thead-padding text-right CHECK_TITLE'][contains(.,'0.00')]  							
...  (//td[contains(@id,'SHARE')][@class='thead-padding text-right'][contains(.,'0.00')])[1] 					
...  (//td[contains(@id,'SHARE')][@class='thead-padding text-right'][contains(.,'0.00')])[2] 					
...  (//td[contains(@id,'SALE')][@class='thead-padding text-right'][contains(.,'0.00')])[1] 					
...  (//td[contains(@id,'SERVICE')][@class='thead-padding text-right'][contains(.,'0.00')])[1]					
...  (//td[contains(@id,'SERVICE')][@class='thead-padding text-right'][contains(.,'0.00')])[2]	
...  //td[contains(@id,'INCOME')][@class='thead-padding text-right'][contains(.,'295,253.00')]						
...  (//td[contains(@id,'SERVICE')][@class='thead-padding text-right'][contains(.,'0.00')])[3]						
...  (//td[contains(@id,'SERVICE')][@class='thead-padding text-right'][contains(.,'0.00')])[4]				
...  //td[contains(@id,'WIP')][@class='thead-padding text-right'][contains(.,'0.00')]			
...  //td[contains(@id,'MATERIAL')][@class='thead-padding text-right'][contains(.,'0.00')]					
...  (//td[contains(@id,'TAX')][@class='thead-padding text-right'][contains(.,'-21,597,564.00')])[1]			
...  //td[contains(@id,'VENTURE')][@class='thead-padding text-right'][contains(.,'0.00')]		
...  (//td[contains(@id,'SHARE')][@class='thead-padding text-right'][contains(.,'0.00')])[4]				
...  (//td[contains(@id,'EXPENSE')][@class='thead-padding text-right'][contains(.,'0.00')])[1]				
...  //td[contains(@id,'EXPENSE')][@class='thead-padding text-right'][contains(.,'21,892,817.00')]		
...  (//td[contains(@id,'EXPENSE')][@class='thead-padding text-right'][contains(.,'0.00')])[2]		
...  //td[contains(@id,'EXPENDITURE')][@class='thead-padding text-right'][contains(.,'0.00')]					
...  (//td[contains(@id,'EXPENSE')][@class='thead-padding text-right'][contains(.,'0.00')])[3]		
...  (//td[contains(@id,'COST')][@class='thead-padding text-right'][contains(.,'0.00')])[3]			
...  (//td[contains(@id,'ASSET')][@class='thead-padding text-right'][contains(.,'0.00')])[1]
...  (//td[contains(@id,'ASSET')][@class='thead-padding text-right'][contains(.,'0.00')])[2]
...  (//td[contains(@id,'EXPENSE')][@class='thead-padding text-right'][contains(.,'0.00')])[4]				
...  //td[contains(@id,'COMPANY')][@class='thead-padding text-right'][contains(.,'0.00')]
...  //td[contains(@id,'CONTROLLING')][@class='thead-padding text-right'][contains(.,'0.00')]			
...  (//td[contains(@id,'TAX')][@class='thead-padding text-right'][contains(.,'-21,597,564.00')])[2]

# -----> Tab รายชื่อกรรมการและผู้ถือหุ้น >  ---------------------------------------------------------------------------------------------

${ContactTabBtn}  id:ContactTabBtn
${ContactFilter}  id:ContactFilter


${ContactBody}  //*[@id="ContactBody"]/tr/td[1]
${ContactBodyName}  //*[@id="ContactBody"]/tr/td[2]
${ContactSurname}  //*[@id="ContactBody"]/tr/td[3]
${ContactBodyType}  //*[@id="ContactBody"]/tr/td[4]
${ContactHold}  //*[@id="ContactBody"]/tr/td[5]

${checck_elerow2}  //*[@id="ContactBody"]/tr[2]/td[1]
${_contains_name2}  //td[@class='text-left'][contains(.,'สรายุทธ')]

## ข้อมูลกรรมการและผู้ถือหุ้น 
## Field Head Table
@{list_directorsAndshareholders}
...  //th[@class='thead-padding text-center'][contains(.,'คำนำหน้า')]
...  (//th[@class='thead-padding text-center'][contains(.,'ชื่อ')])[2]
...  //th[@class='thead-padding text-center'][contains(.,'นามสกุล')]
...  (//th[@class='thead-padding text-center'][contains(.,'ประเภท')])[2]
...  //th[@class='thead-padding text-center'][contains(.,'จำนวนหุ้นที่ถือ')]

${_contains_total}  (//td[@class='text-right'][contains(.,'1')])[2]

# Manage Contact : MC
${MCpanel Search Account}  //*[@id="panelBody"]
${_SearchAccount}  //*[@id="panelBody"]
${panelBody_ContactList}  //*[@id="panelBody"]
${MChead Search}  //div[@class='panel-mycorp-heading'][contains(.,'Search')]
${MCfield Search}  (//span[contains(.,'Search :')])[1]
${MCinput Search}  id:SEARCH_VALUE
${MCbtn Search}  //input[contains(@onclick,'GetAccountList()')]
${MCGrid view}  (//div[contains(@class,'form-group row')])[1]

@{list_element_Search}  
...  id:SEARCH_VALUE
...  //input[contains(@onclick,'GetAccountList()')]
...  id:AccountListBody


${Show Search Account}  //td[@class='text-left'][contains(.,'มหาวิทยาลัยนานาชาติแสตนฟอร์ด')]
${Account PTT}  //td[@class='text-left'][contains(.,'31900070157795')]

# Manage Contact > Grid view Column
${Account Number}  (//th[contains(.,'Account Number')])[1]
${CL Account Name}  (//th[contains(.,'Account Name')])[1]
${Sale Rep AM}  //th[contains(.,'Sale Rep (AM)')]
${BC Name AM}  //th[contains(.,'BC Name (AM)')]
${Sale Rep MST}  //th[contains(.,'Sale Rep (MST)')]
${BC Name MST}  //th[contains(.,'BC Name (MST)')]
${MC_Contact}  (//th[contains(.,'Contact')])[1]
${Account Info}  //th[contains(.,'Account Info')]


@{list_GridViewColumn}
...  Account Number	
...  Account Name  	
...  Sale Rep (AM)  	
...  BC Name (AM)  	
...  Sale Rep (MST)  	
...  BC Name (MST)  	
...  Contact  	
...  Account Info 	
${class_GridViewColumn}   thead-padding text-center
${MC_Edit}  //a[contains(@title,'Edit')]


${No data available}  //td[@colspan='9'][contains(.,'No data available in table')]
${View Account Info}  (//a[contains(@class,'btn btn-info btn-true')])[1]

#Verify Popup Account Information
${Tiltel Account Information}  (//p[contains(.,'Account Information')])[1]
${Information Category}  (//div[@class='col-md-4 col-lg-4'][contains(.,'Category')])[1]
${Information SubCategory}  //div[@class='col-md-4 col-lg-4'][contains(.,'Sub Category')]
${Information Segment}  //div[@class='col-md-4 col-lg-4'][contains(.,'Segment')]
${InformationBtn_close}  (//input[contains(@value,'ปิด')])[1]
#element 
${InformationACCOUNT_CATEGORY}  id:DESKTOP_MODAL_ACCOUNT_CATEGORY
${InformationACCOUNT_SUB_CATEGORY}  id:DESKTOP_MODAL_ACCOUNT_SUB_CATEGORY
${InformationMODAL_SEGMENT}  id:DESKTOP_MODAL_SEGMENT
@{list_Popup Account Information}
...  ${Tiltel Account Information} 		
...  ${Information Category}  			
...  ${Information SubCategory}  		
...  ${Information Segment}  	
...  ${InformationBtn_close}  		
#element 
...  ${InformationACCOUNT_CATEGORY}  	
...  ${InformationACCOUNT_SUB_CATEGORY} 
...  ${InformationMODAL_SEGMENT} 		

${Panel Account Information}  id:AccountPanel
${Panel Feature}  id:FeaturePanel
${Account_buttonBack}  //input[contains(@onclick,'BackBtn();')]
# Data
${data_DESKTOP_INFO_ACCOUNT_NUMBER}  //div[@class='col-md-2 col-lg-2 _desktop'][contains(.,': 000019082019')]
${data_DESKTOP_INFO_ACCOUNT_NAME}  //div[@class='col-md-2 col-lg-2 _desktop'][contains(.,': มหาวิทยาลัยนานาชาติแสตนฟอร์ด')]

#Element
${DESKTOP_INFO_ACCOUNT_NUMBER}  id:DESKTOP_INFO_ACCOUNT_NUMBER
# ${DESKTOP_INFO_BC_NAME}  id:DESKTOP_INFO_BC_NAME
${DESKTOP_INFO_BC_NAME_MST}  id:DESKTOP_INFO_BC_NAME_MST
${DESKTOP_INFO_ACCOUNT_NAME}  id:DESKTOP_INFO_ACCOUNT_NAME
# ${DESKTOP_INFO_SALE_REP}  id:DESKTOP_INFO_SALE_REP
${DESKTOP_INFO_SALE_REP_MST}  id:DESKTOP_INFO_SALE_REP_MST
${DESKTOP_INFO_ACCOUNT_CATEGORY}  id:DESKTOP_INFO_ACCOUNT_CATEGORY
${DESKTOP_INFO_ACCOUNT_SUB_CATEGORY}  id:DESKTOP_INFO_ACCOUNT_SUB_CATEGORY
${DESKTOP_INFO_SEGMENT}  id:DESKTOP_INFO_SEGMENT

@{list_Panel_Account_Information}
...  (//span[contains(.,'Account No.')])[1]
...  (//span[contains(.,'BC Name (AM)')])[1]
...  (//span[contains(.,'BC Name (MST)')])[1]
...  (//span[contains(.,'Account Name')])[1]
...  (//span[contains(.,'Sale Rep (AM)')])[1]
...  (//span[contains(.,'Sale Rep (MST)')])[1]
...  (//span[contains(.,'Category')])[1]
...  (//span[contains(.,'Sub Category')])[1]
...  (//span[contains(.,'Segment')])[1]
...  //input[contains(@onclick,'BackBtn();')]

#data
...  ${data_DESKTOP_INFO_ACCOUNT_NUMBER}  		
# ...  ${data_DESKTOP_INFO_BC_NAME}  				
# ...  ${data_DESKTOP_INFO_BC_NAME_MST}  			
...  ${data_DESKTOP_INFO_ACCOUNT_NAME}  		
# ...  ${data_DESKTOP_INFO_SALE_REP}  			
# ...  ${data_DESKTOP_INFO_SALE_REP_MST}  		
# ...  ${data_DESKTOP_INFO_ACCOUNT_CATEGORY}  	
# ...  ${data_DESKTOP_INFO_ACCOUNT_SUB_CATEGORY}  
# ...  ${data_DESKTOP_INFO_SEGMENT}  				
#element
...  ${DESKTOP_INFO_ACCOUNT_NUMBER} 		
# ...  ${DESKTOP_INFO_BC_NAME}  				
...  ${DESKTOP_INFO_BC_NAME_MST}  			
...  ${DESKTOP_INFO_ACCOUNT_NAME}  			
# ...  ${DESKTOP_INFO_SALE_REP}  				
...  ${DESKTOP_INFO_SALE_REP_MST}  			
...  ${DESKTOP_INFO_ACCOUNT_CATEGORY}  		
...  ${DESKTOP_INFO_ACCOUNT_SUB_CATEGORY}  	
...  ${DESKTOP_INFO_SEGMENT}  				

${MaskingBTN}  id:MaskingBTN
${VIEW}  VIEW
${MASK}   MASK
${loc_contactSearch}  id:contactSearch
${Status_VIEW}  (//button[@class='btn btn-info btn-true'][contains(.,'VIEW')])[1]
${tbody_contactList}  id:contactListBody
${EditAccountDetailMobileBTN}  id:EditAccountDetailMobileBTN

# Status VIEW
${loc_LastNameTH_VIEW}  (//td[@class='text-left MASKING_DATA'])[1]
${loc_LastNameEN_VIEW}  (//td[@class='text-left MASKING_DATA'])[2]
${loc_IDCard_Passport_VIEW}  (//td[@class='text-left MASKING_DATA'])[3]
${loc_Email_VIEW}  (//td[@class='text-left MASKING_DATA'])[4]
${loc_MobileNo1_VIEW}  (//td[@class='text-center MASKING_DATA'])[1]
${loc_MobileNo2_VIEW}  (//td[@class='text-center MASKING_DATA'])[2]

@{list_VIEW_locVerifyMaskingBTN}
...  ${loc_LastNameTH_VIEW}  	
...  ${loc_LastNameEN_VIEW}  	
...  ${loc_IDCard_Passport_VIEW} 
...  ${loc_Email_VIEW}   		
...  ${loc_MobileNo1_VIEW}  	
...  ${loc_MobileNo2_VIEW}  	

# Status MASK
${loc_LastNameTH_MASK}  (//td[@class='text-left CLEAR_DATA'])[1]  				
${loc_LastNameEN_MASK}  (//td[@class='text-left CLEAR_DATA'])[2]			
${loc_IDCard_Passport_MASK}  (//td[@class='text-left CLEAR_DATA'])[3]	
${loc_Email_MASK}  (//td[@class='text-left CLEAR_DATA'])[4]		
${loc_MobileNo1_MASK}  (//td[@class='text-center CLEAR_DATA'])[1]
${loc_MobileNo2_MASK}  (//td[@class='text-center CLEAR_DATA'])[2]	

@{list_locVerifyMaskingBTN_MASK}
...  ${loc_LastNameTH_MASK}  	
...  ${loc_LastNameEN_MASK}  	
...  ${loc_IDCard_Passport_MASK} 
...  ${loc_Email_MASK}   		
...  ${loc_MobileNo1_MASK}  	
...  ${loc_MobileNo2_MASK}  

#    - Panel เลือก Feature 
${loc_SelectFeature}  id:SelectFeature
${valuePleaseSelect}  --- Please Select ---
${valuePleaseSelect2}  --Please Select--
${valueRemarkNote}  Remark Note
${Feature_CALL_DETAIL}  CALL_DETAIL
${Feature_ENGINEER}  ENGINEER
${Feature_VIEW_VALUE}  name:VIEW_VALUE
${Feature_VIEW_VALUE_CONTACT}  value:CONTACT

${Panel_ContactList}  //div[@class='panel-mycorp-heading'][contains(.,'Contact List')]
${Select_redio_Account}  //label[@class='radio-inline'][contains(.,'Account')] 
${Select_redio_NON_MOBILE}  //input[contains(@value,'NON_MOBILE')]

#    - Panel Contact List
${Panel Contact List}  (//div[contains(@class,'panel-mycorp panel-mycorp-green')])[15]

#Logout
${Btn_Logout}  //a[@class='btn btn-default'][contains(.,'ออกจากระบบ')]
${Btn_Logout_ok}  //button[@onclick='logout()']


#   - Panel Manage Detail Mobile/Non Mobile
${Panel_Manage_Mobile}  id:AccountDetailMobilePanel
${Panel_View_Account}  id:ViewAccountDetailMobileBTN
${modal header Detail Mobile}  (//div[@class='modal-header'][contains(.,'Detail Mobile/Non Mobile')])[1]

@{ListPMDMField}
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Group Email')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Fault Update Condition')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Default Email Template')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'ช่องทาง Update Fault')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Suggest Condition By')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Period Days')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'ต้องแจ้งล่วงหน้า')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Impact Time')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'วันทำการ')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Send Monthly Day')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'เวลาทำการ')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Period Time Report')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Number for sms alert')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'NOC')])[5]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Monthly report')])[5]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'SLA')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Monthly report (Email)')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'First Response Time')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Portal')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Follow up Time')])[2]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Response Hour')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Close Response By')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Number for Special')])[2]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'First Response By')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Aftersale Service')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Follow up Response By')])[2]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Start Time Activity')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Start Send Activity Report')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Finish Time Activity')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Finish Send Activity Report')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Start Onsite')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Report Complete/Cancel Activity')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'End Onsite')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Report Complete Activity')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Date do not Activity')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Time Send Complete Activity')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Day do not activity')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Confirm Activity (NOC/SI)')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Report Inform Activity')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Vendor/SI Name')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Date Inform Activity Report')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Vendor/SI email')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Day Inform Activity Report')])[3]
...  (//div[@class='col-md-2 col-lg-2'][contains(.,'Vendor/SI Contact')])[3]					

## Data
${PMDM Data Group Email}  (//div[contains(@id,'EMAIL')][contains(.,'sara_wut@gmail.com')])[1]
${PMDM Data Fault Update Condition}  (//div[contains(@id,'CONDITION')][contains(.,'10')])[1]
${PMDM Data Default Email Template}  (//div[contains(@id,'TEMPLATE')][contains(.,'English')])[1] 			 				
${PMDM Data Update Fault}  (//div[contains(@id,'CHANNEL')][contains(.,'Text to voice')])[1]   				 					
${PMDM Data Suggest Condition By}  (//div[contains(@id,'BY')][contains(.,'Non Mobile')])[1] 								
${PMDM Data Period Days}  (//div[contains(@id,'DAYS')][contains(.,'7')])[1]  										
${PMDM Data need to inform in advance}  (//div[contains(@id,'NOTICE')][contains(.,'100')])[1]  						
${PMDM Data Impact Time}  (//div[contains(@id,'TIME')][contains(.,'20')])[1]  										
${PMDM Data business day}  (//div[contains(@id,'DAY')][contains(.,'จ')])[1]  									
${PMDM Data Send Monthly Day}  (//div[contains(@id,'DAY')][contains(.,'3')])[1]  								
${PMDM Data business hours}  (//div[contains(@id,'TIME')][contains(.,'08.00-17.00')])[1]  									
${PMDM Data Period Time Report}  (//div[contains(@id,'REPORT')][contains(.,'08.30')])[1]  								
${PMDM Data Number for sms alert}  (//div[contains(@id,'ALERT')][contains(.,'08922200000910000000')])[1]  							
${PMDM Data NOC}   (//div[contains(@id,'NOC')])[5]												
${PMDM Data Monthly report}  (//div[contains(@id,'REPORT')])[26] 										
${PMDM Data SLA}   (//div[contains(@id,'SLA')][contains(.,'7')])[1]													
${PMDM Data Monthly report Email}  (//div[contains(@id,'REPORT')][contains(.,'fourseason@gmail.com')])[1]  			 					
${PMDM Data First Response Time}   (//div[contains(@id,'TIME')][contains(.,'10')])[1]									
${PMDM Data Portal}   (//div[contains(@id,'PORTAL')])[3]												
${PMDM Data Follow up Time}  (//div[contains(@id,'TIME')][contains(.,'5')])[1] 										
${PMDM Data Response Hour}   (//div[contains(@id,'HOUR')][contains(.,'60')])[1]										
${PMDM Data Close Response By}   (//div[contains(@id,'BY')][contains(.,'Call,Email')])[1]									
${PMDM Data Number for Special}  (//div[contains(@id,'SPECIAL')][contains(.,'0810000000')])[1]									
${PMDM Data First Response By}  	(//div[contains(@id,'BY')][contains(.,'SMS,Email')])[1] 								
${PMDM Data Aftersale Service}    (//div[contains(@id,'SERVICE')][contains(.,'Mobile Voice,EDS Service')])[1]									
${PMDM Data Follow up Response By}   (//div[contains(@id,'BY')][contains(.,'Line,SMS')])[1] 								
${PMDM Data Start Time Activity}    (//div[contains(@id,'ACTIVITY')][contains(.,'07:00:00')])[1]									
${PMDM Data Start Send Activity Report}   (//div[contains(@id,'REPORT')][contains(.,'08:30:00')])[1] 							
${PMDM Data Finish Time Activity}  		 (//div[contains(@id,'ACTIVITY')][contains(.,'16:00:00')])[1]						
${PMDM Data Finish Send Activity Report}   (//div[contains(@id,'REPORT')][contains(.,'17:30:00')])[1]							
${PMDM Data Start Onsite}  		(//div[contains(@id,'ONSITE')][contains(.,'08:00:00')])[1]		 						
${PMDM Data Report Complete Cancel Activity}  	 (//div[contains(@id,'ACTIVITY')])[31]		
${PMDM Data End Onsite}  	(//div[contains(@id,'ONSITE')][contains(.,'17:00:00')])[1]							
${PMDM Data Report Complete Activity} 	(//div[contains(@id,'ACTIVITY')][contains(.,'Weekly')])[1]				
${PMDM Data Date do not Activity}  	(//div[contains(@id,'ACTIVITY')][contains(.,'1,5,7,31')])[1]				
${PMDM Data Time Send Complete Activity}   (//div[contains(@id,'ACTIVITY')][contains(.,'08.30')])[1]				
${PMDM Data Day do not activity}  	(//div[contains(@id,'ACTIVITY')][contains(.,'ศ,ส')])[1]					
${PMDM Data Confirm Activity NOC SI}   (//div[contains(@id,'SI')])[21]					
${PMDM Data Report Inform Activity}   (//div[contains(@id,'ACTIVITY')][contains(.,'Weekly')])[2]					
${PMDM Data Vendor SI Name}  	(//div[contains(@id,'NAME')][contains(.,'Season')])[1]						
${PMDM Data Date Inform Activity Report}  	 (//div[contains(@id,'REPORT')][contains(.,'5,10,15')])[1]			
${PMDM Data Vendor SI email}  	(//div[contains(@id,'EMAIL')][contains(.,'vendor@gmail.com')])[1]		 				
${PMDM Data Day Inform Activity Report} 	 (//div[contains(@id,'REPORT')][contains(.,'อา,จ,ศ')])[1]			
${PMDM Data Vendor SI Contact} 		(//div[contains(@id,'CONTACT')][contains(.,'คุณนวพร')])[1]	

@{listPMDMData}
...  ${PMDM Data Group Email}
...  ${PMDM Data Fault Update Condition}  
...  ${PMDM Data Default Email Template} 							
...  ${PMDM Data Update Fault}   									
...  ${PMDM Data Suggest Condition By} 								
...  ${PMDM Data Period Days}  										
...  ${PMDM Data need to inform in advance}  						
...  ${PMDM Data Impact Time}  										
...  ${PMDM Data business day}  									
...  ${PMDM Data Send Monthly Day}  								
...  ${PMDM Data business hours}  									
...  ${PMDM Data Period Time Report}  								
...  ${PMDM Data Number for sms alert}  							
...  ${PMDM Data NOC}  												
...  ${PMDM Data Monthly report}  										
...  ${PMDM Data SLA}  													
...  ${PMDM Data Monthly report Email}  								
...  ${PMDM Data First Response Time} 									
...  ${PMDM Data Portal}  												
...  ${PMDM Data Follow up Time}  										
...  ${PMDM Data Response Hour}  										
...  ${PMDM Data Close Response By} 									
...  ${PMDM Data Number for Special} 									
...  ${PMDM Data First Response By}  									
...  ${PMDM Data Aftersale Service}  									
...  ${PMDM Data Follow up Response By}  								
...  ${PMDM Data Start Time Activity}  									
...  ${PMDM Data Start Send Activity Report}  							
...  ${PMDM Data Finish Time Activity}  								
...  ${PMDM Data Finish Send Activity Report}  							
...  ${PMDM Data Start Onsite}  										
...  ${PMDM Data Report Complete Cancel Activity}  			
...  ${PMDM Data End Onsite}  								
...  ${PMDM Data Report Complete Activity} 					
...  ${PMDM Data Date do not Activity}  					
...  ${PMDM Data Time Send Complete Activity} 				
...  ${PMDM Data Day do not activity}  						
...  ${PMDM Data Confirm Activity NOC SI}  					
...  ${PMDM Data Report Inform Activity}  					
...  ${PMDM Data Vendor SI Name}  							
...  ${PMDM Data Date Inform Activity Report}  				
...  ${PMDM Data Vendor SI email}  							
...  ${PMDM Data Day Inform Activity Report} 				
...  ${PMDM Data Vendor SI Contact} 						

## Element
${PMDM ID Group Email}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_GROUP_EMAIL
${PMDM ID Fault Update Condition}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FAULT_UPDATE_CONDITION
${PMDM ID Default Email Template}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_DEFAULT_EMAIL_TEMPLATE							
${PMDM ID Update Fault}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FAULT_UPDATE_CHANNEL   									
${PMDM ID Suggest Condition By}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_SUGGEST_CONDITION_BY   								
${PMDM ID Period Days}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_PERIOD_DAYS  										
${PMDM ID need to inform in advance}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_ADVANCE_NOTICE  						
${PMDM ID Impact Time}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_IMPACT_TIME  										
${PMDM ID business day}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_AVAI_DAY 									
${PMDM ID Send Monthly Day}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_SEND_MONTHLY_DAY  								
${PMDM ID business hours}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_AVAI_TIME  									
${PMDM ID Period Time Report}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_PERIOD_TIME_REPORT  								
${PMDM ID Number for sms alert}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_NUMBER_SMS_ALERT  							
${PMDM ID NOC}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_NOC 												
${PMDM ID Monthly report}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_MONTHLY_REPORT									
${PMDM ID SLA}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_SLA 													
${PMDM ID Monthly report Email}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_EMAIL_MONTHLY_REPORT  								
${PMDM ID First Response Time}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FIRST_RESPONSE_TIME 									
${PMDM ID Portal}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_PORTAL											
${PMDM ID Follow up Time}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FOLLOW_UP_TIME  										
${PMDM ID Response Hour}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_RESPONSE_HOUR  										
${PMDM ID Close Response By}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_CLOSE_RESPONSE_BY 									
${PMDM ID Number for Special}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_NUMBER_FOR_SPECIAL 									
${PMDM ID First Response By}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FIRST_RESPONSE_BY   									
${PMDM ID Aftersale Service}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_AFTERSALE_SERVICE  									
${PMDM ID Follow up Response By}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FOLLOW_UP_BY 								
${PMDM ID Start Time Activity}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_START_TIME_ACTIVITY 									
${PMDM ID Start Send Activity Report}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_START_SEND_ACTIVITY_REPORT  							
${PMDM ID Finish Time Activity}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FINISH_TIME_ACTIVITY 								
${PMDM ID Finish Send Activity Report}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FINISH_SEND_ACTIVITY_REPORT  							
${PMDM ID Start Onsite}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_START_ONSITE  										
${PMDM ID Report Complete Cancel Activity}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_REPORT_STATUS_ACTIVITY  			
${PMDM ID End Onsite}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_END_ONSITE  								
${PMDM ID Report Complete Activity}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_REPORT_COMPLETE_ACTIVITY 					
${PMDM ID Date do not Activity}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_DATE_NOT_ACTIVITY  					
${PMDM ID Time Send Complete Activity}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_TIME_SEND_COMPLETE_ACTIVITY		
${PMDM ID Day do not activity}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_DAY_NOT_ACTIVITY  						
${PMDM ID Confirm Activity NOC SI}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_CONFIRM_ACTIVITY_NOC_SI  					
${PMDM ID Report Inform Activity}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_REPORT_INFORM_ACTIVITY  					
${PMDM ID Vendor SI Name}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_VENDOR_SI_NAME  							
${PMDM ID Date Inform Activity Report}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_DATE_INFORM_ACTIVITY_REPORT  				
${PMDM ID Vendor SI email}  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_VENDOR_SI_EMAIL  							
${PMDM ID Day Inform Activity Report}   id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_DAY_INFORM_ACTIVITY_REPORT				
${PMDM ID Vendor SI Contact}   id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_VENDOR_SI_CONTACT

${Button_Close}  (//input[contains(@type,'button')])[32]		

@{listPMDMElement}	
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_GROUP_EMAIL
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FAULT_UPDATE_CONDITION
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_DEFAULT_EMAIL_TEMPLATE							
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FAULT_UPDATE_CHANNEL   									
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_SUGGEST_CONDITION_BY   								
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_PERIOD_DAYS  										
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_ADVANCE_NOTICE  						
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_IMPACT_TIME  										
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_AVAI_DAY 									
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_SEND_MONTHLY_DAY  								
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_AVAI_TIME  									
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_PERIOD_TIME_REPORT  								
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_NUMBER_SMS_ALERT  							
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_NOC 												
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_MONTHLY_REPORT									
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_SLA 													
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_EMAIL_MONTHLY_REPORT  								
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FIRST_RESPONSE_TIME 									
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_PORTAL											
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FOLLOW_UP_TIME  										
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_RESPONSE_HOUR  										
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_CLOSE_RESPONSE_BY 									
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_NUMBER_FOR_SPECIAL 									
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FIRST_RESPONSE_BY   									
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_AFTERSALE_SERVICE  									
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FOLLOW_UP_BY 								
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_START_TIME_ACTIVITY 									
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_START_SEND_ACTIVITY_REPORT  							
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FINISH_TIME_ACTIVITY 								
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_FINISH_SEND_ACTIVITY_REPORT  							
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_START_ONSITE  										
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_REPORT_STATUS_ACTIVITY  			
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_END_ONSITE  								
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_REPORT_COMPLETE_ACTIVITY 					
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_DATE_NOT_ACTIVITY  					
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_TIME_SEND_COMPLETE_ACTIVITY		
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_DAY_NOT_ACTIVITY  						
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_CONFIRM_ACTIVITY_NOC_SI  					
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_REPORT_INFORM_ACTIVITY  					
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_VENDOR_SI_NAME  							
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_DATE_INFORM_ACTIVITY_REPORT  				
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_VENDOR_SI_EMAIL  							
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_DAY_INFORM_ACTIVITY_REPORT				
...  id:DESKTOP_MODAL_ACC_DETAIL_MOBILE_VENDOR_SI_CONTACT						

# -------------- Edit Account Detail Mobile -------------------------------------------------------------
# Field
${EADM Group Email}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Group Email')])[4]
${EADM Default Email Template}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Default Email Template')])[4]
${EADM Suggest Condition By}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Suggest Condition By')])[4]
${EADM Need Advance}   (//div[@class='col-md-2 col-lg-2'][contains(.,'ต้องแจ้งล่วงหน้า')])[4]
${EADM business day}  (//div[@class='col-md-2 col-lg-2'][contains(.,'วันทำการ')])[4]
${EADM business hours}  (//div[@class='col-md-2 col-lg-2'][contains(.,'เวลาทำการ')])[4]
${EADM Number for sms alert}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Number for sms alert')])[4]
${EADM Monthly report}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Monthly report')])[7]
${EADM Monthly report Email}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Monthly report (Email)')])[4]
${EADM Portal}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Portal')])[4]
${EADM Response Hour}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Response Hour')])[4]
${EADM Number For Special}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Number For Special')])[2]
${EADM Aftersale Service}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Aftersale Service')])[4]
${EADM Start Time Activity}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Start Time Activity')])[4]
${EADM Finish Time Activity}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Finish Time Activity')])[4]
${EADM Start Onsite}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Start Onsite')])[4]
${EADM End Onsite}  (//div[@class='col-md-2 col-lg-2'][contains(.,'End Onsite')])[4]
${EADM Date do not Activity}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Date do not Activity')])[4]
${EADM Day do not activity}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Day do not activity')])[4]
${EADM Report Inform Activity}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Report Inform Activity')])[4]
${EADM Date Inform Activity Report}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Date Inform Activity Report')])[4]
${EADM Day Inform Activity Report}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Day Inform Activity Report')])[4]

${EADM Fault Update Condition}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Fault Update Condition')])[4]
${EADM Canal Update Fault}  (//div[@class='col-md-2 col-lg-2'][contains(.,'ช่องทาง Update Fault')])[4]
${EADM Period Days}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Period Days')])[4]
${EADM Impact Time}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Impact Time')])[4]
${EADM Send Monthly Day}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Send Monthly Day')])[4]
${EADM Period Time Report}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Period Time Report')])[4]
${EADM NOC}  (//div[@class='col-md-2 col-lg-2'][contains(.,'NOC')])[7]
${EADM SLA}  (//div[@class='col-md-2 col-lg-2'][contains(.,'SLA')])[4]
${EADM First Response Time}  (//div[@class='col-md-2 col-lg-2'][contains(.,'First Response Time')])[4]
${EADM Follow Up Time}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Follow Up Time')])[2]
${EADM Close Response By}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Close Response By')])[4]
${EADM First Response By}  (//div[@class='col-md-2 col-lg-2'][contains(.,'First Response By')])[4]
${EADM Follow up Response By}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Follow up Response By')])[3]
${EADM Start Send Activity Report}   (//div[@class='col-md-2 col-lg-2'][contains(.,'Start Send Activity Report')])[4]
${EADM Finish Send Activity Report}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Finish Send Activity Report')])[4]
${EADM Report Complete/Cancel Activity}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Report Complete/Cancel Activity')])[4]
${EADM Report Complete Activity}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Report Complete Activity')])[4]
${EADM Time Send Complete Activity}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Time Send Complete Activity')])[4]
${EADM Confirm Activity NOC SI}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Confirm Activity (NOC/SI)')])[4]
${EADM Vendor SI Name}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Vendor/SI Name')])[4]
${EADM Vendor SI email}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Vendor/SI email')])[4]
${EADM Vendor SI Contact}  (//div[@class='col-md-2 col-lg-2'][contains(.,'Vendor/SI Contact')])[4]

@{List Field Edit Account Detail Mobile}
...  ${EADM Group Email}  						
...  ${EADM Default Email Template}  			
...  ${EADM Suggest Condition By}  				
...  ${EADM Need Advance}   						
...  ${EADM business day} 						
...  ${EADM business hours}  					
...  ${EADM Number for sms alert}  				
...  ${EADM Monthly report}  					
...  ${EADM Monthly report Email} 				
...  ${EADM Portal}  							
...  ${EADM Response Hour} 						
...  ${EADM Number For Special}  				
...  ${EADM Aftersale Service} 					
...  ${EADM Start Time Activity} 				
...  ${EADM Finish Time Activity}  				
...  ${EADM Start Onsite}  						
...  ${EADM End Onsite}  						
...  ${EADM Date do not Activity} 				
...  ${EADM Day do not activity}  				
...  ${EADM Report Inform Activity}  			
...  ${EADM Date Inform Activity Report}  		
...  ${EADM Day Inform Activity Report}  		

...  ${EADM Fault Update Condition}  						
...  ${EADM Canal Update Fault}  							
...  ${EADM Period Days}  									
...  ${EADM Impact Time}  									
...  ${EADM Send Monthly Day} 								
...  ${EADM Period Time Report}  							
...  ${EADM NOC}  											
...  ${EADM SLA}  											
...  ${EADM First Response Time}  							
...  ${EADM Follow Up Time}  								
...  ${EADM Close Response By} 								
...  ${EADM First Response By}  								
...  ${EADM Follow up Response By}  							
...  ${EADM Start Send Activity Report}  					
...  ${EADM Finish Send Activity Report}  					
...  ${EADM Report Complete/Cancel Activity}  				
...  ${EADM Report Complete Activity}  						
...  ${EADM Time Send Complete Activity} 					
...  ${EADM Confirm Activity NOC SI}  						
...  ${EADM Vendor SI Name}  								
...  ${EADM Vendor SI email}  								
...  ${EADM Vendor SI Contact}  								


# Element
# ${EADM Ele Data Group Email}  id:E_DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_GROUP_EMAIL		
${EADM Ele Data Group Email}  (//div[contains(@class,'emails-container')])[8]					
${EADM Ele Data Default Email Template}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_DEFAULT_EMAIL_TEMPLATE  			
${EADM Ele Data Suggest Condition By}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_SUGGEST_CONDITION_BY  				
${EADM Ele Data Need Advance}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_ADVANCE_NOTICE   						
${EADM Ele Data business day}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_AVAI_MON 						
${EADM Ele Data business hours}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_AVAI_TIME  					
${EADM Ele Data Number for sms alert}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_NUMBER_SMS_ALERT  				
${EADM Ele Data Monthly report}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_MONTHLY_REPORT  					
# ${EADM Ele Data Monthly report Email}  id:E_DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_EMAIL_MONTHLY_REPORT 
${EADM Ele Data Monthly report Email}  	(//div[contains(@class,'multiple_emails-container')])[9]		
${EADM Ele Data Portal}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_PORTAL  							
${EADM Ele Data Response Hour}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_RESPONSE_HOUR 						
${EADM Ele Data Number For Special}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_NUMBER_FOR_SPECIAL  				
${EADM Ele Data Aftersale Service}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_AFTERSALE_SERVICE_Mobile_Voice   					
${EADM Ele Data Start Time Activity}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_START_TIME_ACTIVITY 				
${EADM Ele Data Finish Time Activity}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_FINISH_TIME_ACTIVITY  				
${EADM Ele Data Start Onsite}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_START_ONSITE  						
${EADM Ele Data End Onsite}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_END_ONSITE 						
${EADM Ele Data Date do not Activity}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_DATE_NOT_ACTIVITY 				
${EADM Ele Data Day do not activity}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_NOT_ACT_FRI				
${EADM Ele Data Report Inform Activity}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_REPORT_INFORM_ACTIVITY 			
${EADM Ele Data Date Inform Activity Report}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_DATE_INFORM_ACTIVITY_REPORT		
${EADM Ele Data Day Inform Activity Report}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_INFORM_ACT_SUN 

${EADM Ele Data Fault Update Condition}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_FAULT_UPDATE_CONDITION  						
${EADM Ele Data Canal Update Fault}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_FAULT_UPDATE_CHANNEL_Text_to_voice  							
${EADM Ele Data Period Days}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_PERIOD_DAYS 									
${EADM Ele Data Impact Time}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_IMPACT_TIME  									
${EADM Ele Data Send Monthly Day}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_SEND_MONTHLY_DAY 								
${EADM Ele Data Period Time Report}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_PERIOD_TIME_REPORT  							
${EADM Ele Data NOC}   id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_NOC 											
${EADM Ele Data SLA}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_SLA  											
${EADM Ele Data First Response Time}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_FIRST_RESPONSE_TIME  							
${EADM Ele Data Follow Up Time}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_FOLLOW_UP_TIME  								
${EADM Ele Data Close Response By}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_CLOSE_RESPONSE_BY_Call 								
${EADM Ele Data First Response By}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_FIRST_RESPONSE_BY_SMS 								
${EADM Ele Data Follow up Response By}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_FOLLOW_UP_BY_Line 							
${EADM Ele Data Start Send Activity Report}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_START_SEND_ACTIVITY_REPORT  					
${EADM Ele Data Finish Send Activity Report}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_FINISH_SEND_ACTIVITY_REPORT  					
${EADM Ele Data Report Complete/Cancel Activity}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_REPORT_STATUS_ACTIVITY 				
${EADM Ele Data Report Complete Activity}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_REPORT_COMPLETE_ACTIVITY  						
${EADM Ele Data Time Send Complete Activity}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_TIME_SEND_COMPLETE_ACTIVITY 					
${EADM Ele Data Confirm Activity NOC SI}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_CONFIRM_ACTIVITY_NOC_SI  						
${EADM Ele Data Vendor SI Name}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_VENDOR_SI_NAME  								
# ${EADM Ele Data Vendor SI email}  id:E_DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_VENDOR_SI_EMAIL 	
${EADM Ele Data Vendor SI email}   (//input[@class='multiple_emails-input text-left'])[10]							
${EADM Ele Data Vendor SI Contact}  id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_VENDOR_SI_CONTACT

@{List Element Edit Account Detail Mobile}
...  ${EADM Ele Data Group Email}  						
...  ${EADM Ele Data Default Email Template}  			
...  ${EADM Ele Data Suggest Condition By}  				
...  ${EADM Ele Data Need Advance}   						
...  ${EADM Ele Data business day} 						
...  ${EADM Ele Data business hours}  					
...  ${EADM Ele Data Number for sms alert}  				
...  ${EADM Ele Data Monthly report}  					
...  ${EADM Ele Data Monthly report Email} 				
...  ${EADM Ele Data Portal}  							
...  ${EADM Ele Data Response Hour} 						
...  ${EADM Ele Data Number For Special}  				
...  ${EADM Ele Data Aftersale Service} 					
...  ${EADM Ele Data Start Time Activity} 				
...  ${EADM Ele Data Finish Time Activity}  				
...  ${EADM Ele Data Start Onsite}  						
...  ${EADM Ele Data End Onsite}  						
...  ${EADM Ele Data Date do not Activity} 				
...  ${EADM Ele Data Day do not activity}  				
...  ${EADM Ele Data Report Inform Activity}  			
...  ${EADM Ele Data Date Inform Activity Report}  		
...  ${EADM Ele Data Day Inform Activity Report}  		

...  ${EADM Ele Data Fault Update Condition}  						
...  ${EADM Ele Data Canal Update Fault}  							
...  ${EADM Ele Data Period Days}  									
...  ${EADM Ele Data Impact Time}  									
...  ${EADM Ele Data Send Monthly Day} 								
...  ${EADM Ele Data Period Time Report}  							
...  ${EADM Ele Data NOC}  											
...  ${EADM Ele Data SLA}  											
...  ${EADM Ele Data First Response Time}  							
...  ${EADM Ele Data Follow Up Time}  								
...  ${EADM Ele Data Close Response By} 								
...  ${EADM Ele Data First Response By}  								
...  ${EADM Ele Data Follow up Response By}  							
...  ${EADM Ele Data Start Send Activity Report}  					
...  ${EADM Ele Data Finish Send Activity Report}  					
...  ${EADM Ele Data Report Complete/Cancel Activity}  				
...  ${EADM Ele Data Report Complete Activity}  						
...  ${EADM Ele Data Time Send Complete Activity} 					
...  ${EADM Ele Data Confirm Activity NOC SI}  						
...  ${EADM Ele Data Vendor SI Name}  								
...  ${EADM Ele Data Vendor SI email}  								
...  ${EADM Ele Data Vendor SI Contact}  			

${SaveAccountDetailMobile}  id:DESKTOP_SaveAccountDetailMobile
${TwoEmails}  (//td[contains(.,'pudxxxxx@xxxxx.xxx;phuxxxxxxxx@xxxxxxx.xxx')])[1]

# Contact List Page
${btn_editInAction}  (//a[contains(@title,'Edit')])[3]
${btn_deleteInAction}  (//a[@class='btn btn-info btn-true'])[7]


# --> Edit Contact Panel
${EditContactPanel}  id:EditContactPanel

# --> Delete Contact Panel
${header_Confirm_Delete}  (//div[contains(@class,'modal-header')])[14]
${Message_Confirm_Delete}  (//div[contains(@class,'modal-body')])[14]
${btnCancel_Confirm_Delete}  (//button[@type='button'][contains(.,'ยกเลิก')])[3]
${btnconfirm_del_Confirm_Delete}  //button[contains(@onclick,'confirm_del()')]
@{list_Element_DelContact}
...  ${header_Confirm_Delete} 				
...  ${Message_Confirm_Delete}  				
...  ${btnCancel_Confirm_Delete}  			
...  ${btnconfirm_del_Confirm_Delete}  		

# --> Add Contact Panel
${ContactPanelAddBtn}  id:ContactPanelAddBtn
# ${DESKTOP_CONTACT_SEARCH_VALUE}  id:DESKTOP_CONTACT_SEARCH_VALUE        #
${Popup_SEARCH_VALUE}   (//div[contains(@class,'modal-content')])[23]
${Textbox_CONTACT_SEARCH}  id:DESKTOP_CONTACT_SEARCH_VALUE
${DESKTOP_AddNewContactBTN}  id:DESKTOP_AddNewContactBTN
${BtnClose_INAddContact}  (//input[contains(@type,'button')])[19]
${Save_Contact}  id:DESKTOP_SaveSelectContact
${DESKTOP_SearchContactBTN}  id:DESKTOP_SearchContactBTN

@{list_elementAddContact} 
...  id:DESKTOP_CONTACT_SEARCH_VALUE  
...  id:DESKTOP_SearchContactBTN
...  id:DESKTOP_AddNewContactBTN	 				 	 		
...  (//input[contains(@type,'button')])[19]  					
...  id:DESKTOP_SaveSelectContact 	 	 

${AddContactListBody}  id:DESKTOP_AddContactListBody

@{listField_ResultSearch_AddContact}
...  //div[@class='col-md-2 col-lg-2'][contains(.,'Contact Name (TH)')]
...  //div[@class='col-md-2 col-lg-2'][contains(.,'Mobile No. 1')]
...  //div[@class='col-md-2 col-lg-2'][contains(.,'Home No.')]
...  //div[@class='col-md-2 col-lg-2'][contains(.,'Contact Name (EN)')]
...  //div[@class='col-md-2 col-lg-2'][contains(.,'Mobile No. 2')]
...  //div[@class='col-md-2 col-lg-2'][contains(.,'Office No.')]
...  //div[@class='col-md-1 col-lg-1'][contains(.,'ID Type')]
...  //div[@class='col-md-1 col-lg-1'][contains(.,'ID Number')]

${AddContactList_row1}  (//div[contains(@class,'col-md-12 col-lg-12 ClassContactList')])[1]

# Add Contact Detail  
${ACD_Contact_FirstNameTH}  id:Contact_FirstNameTH

# Add Contact > Summary Panel
${_headerAddContact}  id:EditContactPanel
${_Panel_Contact}  id:ContactSubPanel_body
${AddContact_PanelServiceRole}  //div[@id="ServiceRoleSubPanel"]
# ${AddContact_PanelServiceRole}   //*[@id="ServiceRoleSubPanel"]/div[1]/b
${_Panel_edit_contact}  //div[@id="panel_edit_contact"]
${_Panel_ContactBTN_Back}  (//input[contains(@value,'Back')])[2]
${_Panel_ContactBTN_Save}  //input[@onclick='SaveAddEditContactBtn()']
@{list_PanelAddContactDetail} 
...  id:ContactSubPanel
...  id:ServiceRoleSubPanel
# ...  id:panel_edit_contact
...  ${_Panel_ContactBTN_Back}
...  ${_Panel_ContactBTN_Save}

@{List_AddCon_PanelContact}
#Field Name
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Title : *')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'First Name (TH) : *')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'First Name (EN) : *')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'ID Type :')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Birthdate :')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Mobile No. 1 : *')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Office No. : *')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Home No. : *')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Department :')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Title Other :')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Last Name (TH) : *')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Last Name (EN) : *')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'ID Number :')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Email :')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Mobile No. 2 :')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Fax No. :')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact'][contains(.,'Position :')]		

# Element
...  id:Contact_Title  				
...  id:Contact_FirstNameTH  			
...  id:Contact_FirstNameEN			
...  id:Contact_IDType  				
...  id:Contact_Birthdate_Des  			
...  id:Contact_MobileNo1  			
...  id:Contact_OfficeNo  			
...  id:Contact_HomeNo  				
...  id:Contact_Department 			
...  id:Contact_TitleOther  			
...  id:Contact_LastNameTH  			
...  id:Contact_LastNameEN  			
...  id:Contact_IDNumber 			
...  (//input[@class='multiple_emails-input text-left'])[1]				
...  id:Contact_MobileNo2 			
...  id:Contact_FaxNo  				
...  id:Contact_Position			

${AddCon_Element_Title}  id:Contact_Title  				
${AddCon_Contact_FirstNameTH}  id:Contact_FirstNameTH  			
${AddCon_Contact_FirstNameEN}  id:Contact_FirstNameEN			
${AddCon_Contact_IDType}  id:Contact_IDType  				
${AddCon_Pcon_Element_Birthdate}  id:Contact_Birthdate_Des  			
${AddCon_Contact_MobileNo1}  id:Contact_MobileNo1  			
${AddCon_Contact_OfficeNo}  id:Contact_OfficeNo  			
${AddCon_Contact_HomeNo}  id:Contact_HomeNo  				
${AddCon_Contact_Department}  id:Contact_Department 			
${AddCon_Contact_TitleOther}  id:Contact_TitleOther  			
${AddCon_Contact_LastNameTH}  id:Contact_LastNameTH  			
${AddCon_Contact_LastNameEN}  id:Contact_LastNameEN  			
${AddCon_Contact_IDNumber}  id:Contact_IDNumber 			
${AddCon_Contact_Email}  (//input[@class='multiple_emails-input text-left'])[1]				
${AddCon_Contact_MobileNo2}  id:Contact_MobileNo2 			
${AddCon_Contact_FaxNo}  id:Contact_FaxNo  				
${AddCon_Contact_Position}  id:Contact_Position		

${Err_Contact_Email}  id:E_Contact_Email
${emails_errorFormat}  //input[contains(@class,'emails-error')]

${requiredFieldMobileNumber}  id:E_Contact_MobileNo1
${requiredFieldContactFirstNameTH}  id:E_Contact_FirstNameTH
# mobile 
${Err_Contact_MobileNo1}  id:E_Contact_MobileNo1
${Err_Contact_MobileNo2}  id:E_Contact_MobileNo2

@{listElementIgnore}
...  ${requiredFieldMobileNumber}
...  ${requiredFieldContactFirstNameTH}

# Add Contact > Service Role
# Column
# ${_colStage}  (//th[@class='thead-padding text-center'][contains(.,'Stage')])[1]
# ${_colRole}  (//th[@class='thead-padding text-center'][contains(.,'Role')])[1] 
# ${_colService}  (//th[@class='thead-padding text-center'][contains(.,'Service')])[5]
# ${_colFunc}  (//th[@class='thead-padding text-center'][contains(.,'Func.')])[1]

# Data in Column
# ${_Aftersale}  //td[@class='thead-padding text-center'][contains(.,'Aftersale')]
# ${_Engineer}  //td[@class='thead-padding text-center'][contains(.,'Engineer')]
# ${_ServiceNA}  (//td[@class='thead-padding text-center'][contains(.,'N/A')])[1]
${_Contact_RoleFuncID}  id:Contact_RoleFuncID

@{List_ColumnServiceRole}
# Column
...  (//th[@class='thead-padding text-center'][contains(.,'Stage')])[1]
...  (//th[@class='thead-padding text-center'][contains(.,'Role')])[1] 
...  (//th[@class='thead-padding text-center'][contains(.,'Service')])[5]
...  (//th[@class='thead-padding text-center'][contains(.,'Func.')])[1]			
...  //td[@class='thead-padding text-center'][contains(.,'Aftersale')]
...  //td[@class='thead-padding text-center'][contains(.,'Engineer')]
...  (//td[@class='thead-padding text-center'][contains(.,'N/A')])[1]
...  id:Contact_RoleFuncID

# Add Contact > Contact Type
# Field
${ContactType_ddlContactType}  (//div[contains(@class,'ddlContactType')])[1]
${ContactType_ddlContactPriority}  (//div[contains(@class,'ddlContactPriority')])[1]
${ContactType_chkSKAContact}  (//div[contains(@class,'chkSKAContact')])[1]

# Element
${edit_contactType}  //select[@class='form-control'][contains(@id,'contactType')]
${edit_contactPriority}  //select[@class='form-control'][contains(@id,'contactPriority')]
${edit_SKAChk}  //input[contains(@id,'SKAChk')][@type='checkbox']

@{List_PanelContactType}
# Field 
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact COMPONENT_ddlContactType'][contains(.,'Contact Type : *')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact COMPONENT_ddlContactPriority'][contains(.,'Contact Priority :')]
...  //div[@class='col-xs-12 col-sm-2 col-md-2 col-lg-2 div-topic-contact COMPONENT_chkSKAContact'][contains(.,'SKA Contact :')]
# Element
...  id:edit_contactType
...  id:edit_contactPriority
...  id:edit_SKAChk						

${Panel_ContactType}  id:edit_contact
${AC_contactType}  //select[contains(@name,'contactTypeList')]
${valueNoPriority}  ไม่กำหนด priority
${SKAContactCheckbox}  //input[contains(@id,'SKAChk')][@type='checkbox']

# Popup Edit Contact Confirm
${popup_header}  (//div[@class='modal-header'][contains(.,'ยืนยัน')])[4]
${popup_body}  id:modal_Confirm_body
${popup_cancel}  (//input[contains(@value,'ยกเลิก')])[3]
${popup_Confirm_btn}  id:modal_Confirm_btn

@{list_PopupEditContactConfirm}
...  (//div[@class='modal-header'][contains(.,'ยืนยัน')])[4]
...  id:modal_Confirm_body
...  (//input[contains(@value,'ยกเลิก')])[3]
...  id:modal_Confirm_btn	

${value_popup_body}  เนื่องจากพบ Contact นี้อยู่ในระบบ คุณต้องการ Update Contact รายการนี้ต่อหรือไม่ ?

${btn_editInContactList}  (//a[contains(@title,'Edit')])[4]
${btn_editContact_List}  (//a[contains(@title,'Edit')])

# Panel : List Non Mobile Information
${panel-mycorp-heading}  //div[@class='panel-mycorp-heading'][contains(.,'List Non Mobile Information')]
${panel-mycorp-body}  (//div[contains(@class,'panel-mycorp-body')])[4]

${NonMobileFilter}  id:NonMobileFilter

# Row
${_rowEdit}  //*[@id="NonMobileListBody_C"]/tr/th/a
${_rowViewNonMobile}  //*[@id="NonMobileListBody"]/tr/td[14]/a
# ${_rowViewContact}  (//a[contains(@class,'btn btn-info btn-true')])[5] 
${_rowViewContact}  //*[@id="NonMobileListBody"]/tr/td[15]/a

@{list_NonMobileInformation}
...  id:NonMobileFilter         # input text Search
...  (//th[@rowspan='2'][contains(.,'Action')])[1]
...  (//th[@rowspan='2'][contains(.,'Non Mobile No')])[1]
...  (//th[@rowspan='2'][contains(.,'Link Name')])[1]  
...  (//th[@class='thead-padding text-center'][contains(.,'Product Group')])[1]
...  (//th[@class='thead-padding text-center'][contains(.,'Product Type')])[1]
...  (//th[@class='thead-padding text-center'][contains(.,'Product Sub Type')])[1]
...  (//th[@colspan='3'][contains(.,'Type of Service')])[1]
...  (//th[@rowspan='2'][contains(.,'Host/Branch')])[1]
...  (//th[@rowspan='2'][contains(.,'ต้องแจ้งล่วงหน้า')])[1]
...  (//th[@rowspan='2'][contains(.,'วันทำการ')])[1]
...  (//th[@rowspan='2'][contains(.,'เวลาทำการ')])[1]
...  (//th[@rowspan='2'][contains(.,'ช่องทาง Update Fault')])[1]
...  (//th[@rowspan='2'][contains(.,'VIP')])[1]
...  (//th[@rowspan='2'][contains(.,'Period Day')])[1]
...  (//th[@rowspan='2'][contains(.,'Impact Time')])[1]
...  (//th[@rowspan='2'][contains(.,'View Non Mobile')])[1]
...  (//th[@rowspan='2'][contains(.,'View Contact')])[1]
...  //*[@id="NonMobileListBody_C"]/tr/th/a         # icon edit
...  //*[@id="NonMobileListBody"]/tr/td[14]/a       # icon View Non Mobile
...  //*[@id="NonMobileListBody"]/tr/td[15]/a       # icon View Contact

${Search_ListContactInformation}  id:NonMobileFilter

${checkbox_Main}  (//input[contains(@type,'checkbox')])[1]
${checkbox_Authorize}  (//input[contains(@type,'checkbox')])[2]
${btn_EditNonMobile}  (//a[@class='btn btn-info btn-true'])[6]

# Non Mobile > List Contact Information
${NonM_AddContactBtn}  id:AddContactEngBtn
${NonM_Popup_modalContent}  (//div[contains(@class,'modal-content')])[23]

${btn_delContactInList}  (//a[@class='btn btn-info btn-true'])[12]

${body_confirmDel}  คุณต้องการลบข้อมูล Contact ออกจากระบบหรือไม่ ?
${check_ListContact}  (//td[@class='text-left MASKING_DATA'][contains(.,'ทดสอบระบบ xxxxx')])[1]
${btn_confirmDelete}  id:txt_SessionExpireOk
${No data available in table}  (//td[contains(.,'No data available in table')])[1]

${check List Contact JINGJAI}  (//td[@class='text-left MASKING_DATA'][contains(.,'จริงใจ xxxxx')])[1]

# Non Mobile
${main_panel_EditNonMobilePanel}  id:EditNonMobilePanel
${sub panel ManageNonMobilePanel}  id:ManageNonMobilePanel
${sub panel List Contact Information}  (//div[@class='panel-mycorp panel-mycorp-green'])[8]
${Popup_detailNonMobile}  (//div[contains(@class,'modal-content')])[26]
${Managebtn_View_NonMobile}  id:ViewNonMobileBTN
${Managebtn_Edit_NonMobile}  id:EditNonMobileBTN

# Data in Field Non Mobile (View Non Mobile)
@{EleDatatest_NonMobile}
...  id:DESKTOP_MODAL_NON_MOBILE_NO
...  id:DESKTOP_MODAL_PRODUCT_GROUP
...  id:DESKTOP_MODAL_PRODUCT_TYPE
...  id:DESKTOP_MODAL_PRODUCT_SUBTYPE
...  id:DESKTOP_MODAL_GROUP_EMAIL
...  id:DESKTOP_MODAL_DEFAULT_EMAIL_TEMPLATE
...  id:DESKTOP_MODAL_SUGGEST_CONDITION_BY
...  id:DESKTOP_MODAL_LOCATION_TYPE
...  id:DESKTOP_MODAL_ADVANCE_NOTICE
...  id:DESKTOP_MODAL_AVAI_DAY
...  id:DESKTOP_MODAL_AVAI_TIME
...  id:DESKTOP_MODAL_NUMBER_SMS_ALERT
...  id:DESKTOP_MODAL_MONTHLY_REPORT
...  id:DESKTOP_MODAL_EMAIL_MONTHLY_REPORT
...  id:DESKTOP_MODAL_FIRST_RESPONSE_TIME
...  id:DESKTOP_MODAL_FOLLOW_UP_TIME
...  id:DESKTOP_MODAL_CLOSE_RESPONSE_BY
...  id:DESKTOP_MODAL_PORTAL
...  id:DESKTOP_MODAL_RESPONSE_HOUR
...  id:DESKTOP_MODAL_NUMBER_FOR_SPECIAL
...  id:DESKTOP_MODAL_START_TIME_ACTIVITY
...  id:DESKTOP_MODAL_FINISH_TIME_ACTIVITY
...  id:DESKTOP_MODAL_START_ONSITE
...  id:DESKTOP_MODAL_END_ONSITE
...  id:DESKTOP_MODAL_DATE_NOT_ACTIVITY
...  id:DESKTOP_MODAL_DAY_NOT_ACTIVITY
...  id:DESKTOP_MODAL_REPORT_INFORM_ACTIVITY
...  id:DESKTOP_MODAL_DATE_INFORM_ACTIVITY_REPORT
...  id:DESKTOP_MODAL_DAY_INFORM_ACTIVITY_REPORT
...  id:DESKTOP_MODAL_FAULT_UPDATE_CONDITION
...  id:DESKTOP_MODAL_FAULT_UPDATE_CHANNEL
...  id:DESKTOP_MODAL_PERIOD_DAYS
...  id:DESKTOP_MODAL_IMPACT_TIME
...  id:DESKTOP_MODAL_SEND_MONTHLY_DAY
...  id:DESKTOP_MODAL_PERIOD_TIME_REPORT
...  id:DESKTOP_MODAL_FIRST_RESPONSE_BY
...  id:DESKTOP_MODAL_FOLLOW_UP_BY
...  id:DESKTOP_MODAL_NOC
...  id:DESKTOP_MODAL_SLA
...  id:DESKTOP_MODAL_AFTERSALE_SERVICE
...  id:DESKTOP_MODAL_START_SEND_ACTIVITY_REPORT
...  id:DESKTOP_MODAL_FINISH_SEND_ACTIVITY_REPORT
...  id:DESKTOP_MODAL_REPORT_STATUS_ACTIVITY
...  id:DESKTOP_MODAL_REPORT_COMPLETE_ACTIVITY
...  id:DESKTOP_MODAL_TIME_SEND_COMPLETE_ACTIVITY
...  id:DESKTOP_MODAL_CONFIRM_ACTIVITY_NOC_SI
...  id:DESKTOP_MODAL_VENDOR_SI_NAME
...  id:DESKTOP_MODAL_VENDOR_SI_EMAIL
...  id:DESKTOP_MODAL_VENDOR_SI_CONTACT

${btnClose_nonMobile}  (//input[@data-dismiss='modal'])[19]

# Data in Field Non Mobile (View Contact)

@{list_rowViewContact}

# ...  Title
# ...  Fullname (TH)
# ...  Fullname (EN)
# ...  Email
# ...  Mobile 1
# ...  Mobile 2
# ...  Office no
# ...  Fax no
# ...  Funtion
# ...  Main
# ...  Authorize

...  //*[@id="modal_Contact"]/div[1]/div/div[2]/div/div/div[1]/table/thead/tr/th[1]
...  //*[@id="modal_Contact"]/div[1]/div/div[2]/div/div/div[1]/table/thead/tr/th[2]
...  //*[@id="modal_Contact"]/div[1]/div/div[2]/div/div/div[1]/table/thead/tr/th[3]
...  //*[@id="modal_Contact"]/div[1]/div/div[2]/div/div/div[1]/table/thead/tr/th[4]
...  //*[@id="modal_Contact"]/div[1]/div/div[2]/div/div/div[1]/table/thead/tr/th[5]
...  //*[@id="modal_Contact"]/div[1]/div/div[2]/div/div/div[1]/table/thead/tr/th[6]
...  //*[@id="modal_Contact"]/div[1]/div/div[2]/div/div/div[1]/table/thead/tr/th[7]
...  //*[@id="modal_Contact"]/div[1]/div/div[2]/div/div/div[1]/table/thead/tr/th[8]
...  //*[@id="modal_Contact"]/div[1]/div/div[2]/div/div/div[1]/table/thead/tr/th[9]
...  //*[@id="modal_Contact"]/div[1]/div/div[2]/div/div/div[1]/table/thead/tr/th[10]
...  //*[@id="modal_Contact"]/div[1]/div/div[2]/div/div/div[1]/table/thead/tr/th[11]


# Datat Test

${DESKTOP_MaskingBTN}  id:DESKTOP_MaskingBTN
${DESKTOP_ContactListBody}  id:DESKTOP_ContactListBody
${Button_close_1}  (//input[contains(@onclick,'ClearViewEyeBTN();')])[1]

@{list_locVerify_BTNMASK}
...  (//td[@class='text-center'][contains(.,'คุณ')])[4]
...  (//td[@class='text-left MASKING_DATA'][contains(.,'พี่เต๊ะ xxxxx')])[1]
...  (//td[@class='text-left MASKING_DATA'][contains(.,'PTae xxxxx')])[1]
...  (//td[@class='text-center MASKING_DATA'][contains(.,'vamxxxxxxxx@xxxxx.xxx')])[1]
...  (//td[@class='text-center MASKING_DATA'][contains(.,'098xxx1104')])[1]
...  (//td[@class='text-center MASKING_DATA'][contains(.,'083xxx0374')])[1]
...  (//td[@class='text-center'][contains(.,'024442252')])[1]
...  (//td[@class='text-center'][contains(.,'027777777')])[1]
...  (//td[@class='text-center'][contains(.,'N/A')])[5]


@{list_locVerify_BTNMASK2}
...  (//td[@class='text-center'][contains(.,'คุณ')])[4]
...  (//td[@class='text-left MASKING_DATA'][contains(.,'พี่เต๊ะ xxxxx')])[1]
...  (//td[@class='text-left MASKING_DATA'][contains(.,'PTae xxxxx')])[1]
...  (//td[@class='text-center MASKING_DATA'][contains(.,'vamxxxxxxxx@xxxxx.xxx')])[1]
...  (//td[@class='text-center MASKING_DATA'][contains(.,'098xxx1104')])[1]
...  (//td[@class='text-center MASKING_DATA'][contains(.,'083xxx0374')])[1]
...  (//td[@class='text-center'][contains(.,'024442252')])[1]
...  (//td[@class='text-center'][contains(.,'027777777')])[1]
...  (//td[@class='text-center'][contains(.,'N/A')])[3]

@{list_locVerify_MaskingBTN_VIEW}
...  (//td[contains(.,'จริงใจ เทส')])[3]

@{list_locVerify_MaskingBTN_VIEW2}
...  (//td[@class='text-center'][contains(.,'คุณ')])[4]
...  (//td[@class='text-left CLEAR_DATA'][contains(.,'พี่เต๊ะ ทดสอบ')])[1]
...  (//td[@class='text-left CLEAR_DATA'][contains(.,'PTae Todsob')])[1]
...  (//td[@class='text-center CLEAR_DATA'][contains(.,'vame022pire@gmail.com')])[1]
...  (//td[@class='text-center CLEAR_DATA'][contains(.,'0982601104')])[1]
...  (//td[@class='text-center CLEAR_DATA'][contains(.,'0830340374')])[1]
...  (//td[@class='text-center'][contains(.,'024442252')])[1]
...  (//td[@class='text-center'][contains(.,'027777777')])[1]
...  (//td[@class='text-center'][contains(.,'N/A')])[3]

@{list_locVerify_MaskingBTN_VIEW3}
...  (//td[@class='text-left MASKING_DATA'][contains(.,'จริงใจ xxxxx')])[2]

@{EleDatatest_EditNonMobile}
...  id:DESKTOP_EDIT_MODAL_NON_MOBILE_NO
...  id:DESKTOP_EDIT_MODAL_PRODUCT_GROUP
...  id:DESKTOP_EDIT_MODAL_PRODUCT_TYPE
...  id:DESKTOP_EDIT_MODAL_PRODUCT_SUBTYPE
...  id:DESKTOP_MULTIPLE_GROUP_EMAIL
...  id:DESKTOP_EDIT_MODAL_DEFAULT_EMAIL_TEMPLATE
...  id:DESKTOP_EDIT_MODAL_SUGGEST_CONDITION_BY
...  id:DESKTOP_EDIT_MODAL_LOCATION_TYPE
...  id:DESKTOP_EDIT_MODAL_ADVANCE_NOTICE
...  id:DESKTOP_EDIT_MODAL_AVAI_MON
...  id:DESKTOP_EDIT_MODAL_AVAI_TIME
...  id:DESKTOP_EDIT_MODAL_NUMBER_SMS_ALERT
...  id:DESKTOP_EDIT_MODAL_MONTHLY_REPORT
...  id:DESKTOP_MULTIPLE_EMAIL_MONTHLY_REPORT
...  id:DESKTOP_EDIT_MODAL_COMPANY_ID
...  id:DESKTOP_EDIT_MODAL_FIRST_RESPONSE_TIME
...  id:DESKTOP_EDIT_MODAL_FOLLOW_UP_TIME
...  id:DESKTOP_EDIT_MODAL_CLOSE_RESPONSE_BY_Call
...  id:DESKTOP_EDIT_MODAL_PRIORITY
...  id:DESKTOP_EDIT_MODAL_PORTAL
...  id:DESKTOP_EDIT_MODAL_RESPONSE_HOUR
...  id:DESKTOP_EDIT_MODAL_NUMBER_FOR_SPECIAL
...  id:DESKTOP_EDIT_MODAL_START_TIME_ACTIVITY
...  id:DESKTOP_EDIT_MODAL_FINISH_TIME_ACTIVITY
...  id:DESKTOP_EDIT_MODAL_START_ONSITE
...  id:DESKTOP_EDIT_MODAL_END_ONSITE
...  id:DESKTOP_EDIT_MODAL_DATE_NOT_ACTIVITY
...  id:DESKTOP_EDIT_MODAL_NOT_ACT_FRI
...  id:DESKTOP_EDIT_MODAL_REPORT_INFORM_ACTIVITY
...  id:DESKTOP_EDIT_MODAL_DATE_INFORM_ACTIVITY_REPORT
...  id:DESKTOP_EDIT_MODAL_INFORM_ACT_MON
...  id:DESKTOP_EDIT_MODAL_LINK_NAME
...  id:DESKTOP_EDIT_MODAL_FAULT_UPDATE_CONDITION
...  id:DESKTOP_EDIT_MODAL_FAULT_UPDATE_CHANNEL_Text_to_voice
...  id:DESKTOP_EDIT_MODAL_VIP_FLAG
...  id:DESKTOP_EDIT_MODAL_PERIOD_DAYS
...  id:DESKTOP_EDIT_MODAL_IMPACT_TIME
...  id:DESKTOP_EDIT_MODAL_SEND_MONTHLY_DAY
...  id:DESKTOP_EDIT_MODAL_PERIOD_TIME_REPORT
...  id:DESKTOP_EDIT_MODAL_CSL_LINK_ID
...  id:DESKTOP_EDIT_MODAL_CSL_CUSTOMER_ID
...  id:DESKTOP_EDIT_MODAL_CSL_CUSTOMER_NAME
...  id:DESKTOP_EDIT_MODAL_STORE_CODE
...  id:DESKTOP_EDIT_MODAL_CA_INITIAL
...  id:DESKTOP_EDIT_MODAL_CUSTOMER_SITE_CODE
...  id:DESKTOP_EDIT_MODAL_HIGH_REVENUE_FLAG
...  id:DESKTOP_EDIT_MODAL_FIRST_RESPONSE_BY_SMS
...  id:DESKTOP_EDIT_MODAL_FOLLOW_UP_BY_SMS
...  id:DESKTOP_EDIT_MODAL_ALIAS
...  id:DESKTOP_EDIT_MODAL_NOC
...  id:DESKTOP_EDIT_MODAL_SLA
...  id:DESKTOP_EDIT_MODAL_CONDITION
...  id:DESKTOP_EDIT_MODAL_AFTERSALE_SERVICE_Mobile_Data
...  id:DESKTOP_EDIT_MODAL_START_SEND_ACTIVITY_REPORT
...  id:DESKTOP_EDIT_MODAL_FINISH_SEND_ACTIVITY_REPORT
...  id:DESKTOP_EDIT_MODAL_REPORT_STATUS_ACTIVITY
...  id:DESKTOP_EDIT_MODAL_REPORT_COMPLETE_ACTIVITY
...  id:DESKTOP_EDIT_MODAL_TIME_SEND_COMPLETE_ACTIVITY
...  id:DESKTOP_EDIT_MODAL_CONFIRM_ACTIVITY_NOC_SI
...  id:DESKTOP_EDIT_MODAL_VENDOR_SI_NAME
...  id:DESKTOP_MODAL_MULTIPLE_VENDOR_SI_EMAIL
...  id:DESKTOP_EDIT_MODAL_VENDOR_SI_CONTACT
...  ${DESKTOP_SaveNonMobile}
...  ${DESKTOP_CloseNonMobile}

${DESKTOP_SaveNonMobile}  id:DESKTOP_SaveNonMobile
${DESKTOP_CloseNonMobile}  (//input[contains(@value,'ปิด')])[10]

${field edit Follow Up By}  //div[@class='col-md-2 col-lg-2'][contains(.,'Follow Up By')]
${btnclose_EditNonMobile}  (//input[contains(@value,'ปิด')])[10]


## Panel List Contact Information
${ContactForUpdateListBody}  id:ContactForUpdateListBody

#--------------------------------------------
#--------------------------------------------
# List Contact Information NonMobile
@{List Contact Information NonMobile} 
...  Title	
...  Fullname (TH)	
...  Fullname (EN)	
...  Email	
...  Mobile 1	
...  Mobile 2	
...  Office no	
...  Fax no	
...  Funtion	
...  Main	
...  Authorize

${Action List Contact}  (//th[@class='thead-padding text-center'][contains(.,'Action')])[5]
${ContactSubPanel}  id:ContactSubPanel
${_verify_result9001062020}  //b[contains(.,'Manage Non Mobile [Non Mobile number: 9001062020]')]
${btnEdit_nameJINGJAI}   //*[@id="ContactForUpdateListBody_C"]/tr/th/a[1]
${btnDel_contactListBodyTr1}  //*[@id="contactListBody"]/tr[1]/th/div[2]/a
${btn_ClosePopup}  //*[@id="modal_NonMobileDetail"]/div[1]/div/div[3]/input
${btn_ClosePopup_modal_Contact}  //*[@id="modal_Contact"]/div[1]/div/div[3]/input
${btn_ClosePopup_modal_NonMobile}  //*[@id="modal_NonMobileDetailForUpdate"]/div[1]/div/div[3]/input[1]
${btn_delete_accListContactInformation_row1}  //*[@id="ContactForUpdateListBody_C"]/tr/th/a[2]
${btn_ClosePopup_modal_AddContactList}  //*[@id="modal_AddContactList"]/div/div[1]/div/div[3]/input[1]
${btn_backEditContactPanel}  //*[@id="EditContactPanel"]/div/p/input[1]
${btnDel_contactListBodyRow1}  //*[@id="contactListBody"]/tr/th/div[2]/a
${buttonEdit_contact}  //*[@id="contactListBody"]/tr/th/div[1]/a
${Account_SearchAddContact3}  (//td[@class='text-left MASKING_DATA'][contains(.,'สมหมาย xxxxx')])[1]

@{FieldName_NonMobile}
...  Non Mobile Number
...  Product Group
...  Product Type
...  Product SubType
...  Group Email
...  Default Email Template
...  Suggest Condition By
...  Host/Branch
...  ต้องแจ้งล่วงหน้า
...  วันทำการ
...  เวลาทำการ
...  Number for sms alert
...  Monthly report
...  Monthly report (Email)
...  Company ID
...  First Response Time
...  Follow up Time
...  Close Response By
...  Priority
...  Portal
...  Response Hour
...  Number for Special
...  Start Time Activity
...  Finish Time Activity
...  Start Onsite
...  End Onsite
...  Date do not Activity
...  Day do not activity
...  Report Inform Activity
...  Date Inform Activity Report
...  Day Inform Activity Report
...  Link Name
...  Fault Update Condition
...  ช่องทาง Update Fault
...  VIP
...  Period Days
...  Impact Time
...  Send Monthly Day
...  Period Time Report
...  Link ID (CSL)
...  Customer ID (CSL)
...  Customer Name (CSL)
...  Store Code
...  CA Initial
...  Customer Site Code
...  Hight Revenue
...  First Response By
...  Follow up Response By
...  Alias
...  NOC
...  SLA
...  Condition
...  Aftersale Service
...  Start Send Activity Report
...  Finish Send Activity Report
...  Report Complete/Cancel Activity
...  Report Complete Activity
...  Time Send Complete Activity
...  Confirm Activity (NOC/SI)
...  Vendor/SI Name
...  Vendor/SI email
...  Vendor/SI Contact

#---------------------------------------------------
#---------------------------------------------------

@{FieldName_EditNonMobile}
...  Non Mobile Number
...  Product Group
...  Product Type
...  Product SubType
...  Group Email
...  Default Email Template
...  Suggest Condition By
...  Host/Branch
...  ต้องแจ้งล่วงหน้า
...  วันทำการ
...  เวลาทำการ
...  Number for sms alert
...  Monthly report
...  Monthly report (Email)
...  Company ID
...  First Response Time
...  Follow Up Time
...  Close Response By
...  Priority
...  Portal
...  Response Hour
...  Number For Special
...  Start Time Activity
...  Finish Time Activity
...  Start Onsite
...  End Onsite
...  Date do not Activity
...  Day do not activity
...  Report Inform Activity
...  Date Inform Activity Report
...  Day Inform Activity Report
...  Link Name
...  Fault Update Condition
...  ช่องทาง Update Fault
...  VIP
...  Period Days
...  Impact Time
...  Send Monthly Day
...  Period Time Report
...  Link ID (CSL)
...  Customer ID (CSL)
...  Customer Name (CSL)
...  Store Code
...  CA Initial
...  Customer Site Code
...  Hight Revenue
...  First Response By
# ...  Follow Up By
...  Alias
...  NOC
...  SLA
...  Condition
...  Aftersale Service
...  Start Send Activity Report
...  Finish Send Activity Report
...  Report Complete/Cancel Activity
...  Report Complete Activity
...  Time Send Complete Activity
...  Confirm Activity (NOC/SI)
...  Vendor/SI Name
...  Vendor/SI email
...  Vendor/SI Contact

${select_LINE}   id:DESKTOP_EDIT_MODAL_ACC_DETAIL_MOBILE_CLOSE_RESPONSE_BY_Line
${house_number_field}        //input[@id="input_houseNumber"]
${privence}        //select[@id="ddl_province"]
${district_field}        //select[@id="ddl_amphur"]
${district_field_1}        //select[@id="ddl_tumbol"]
${address_next_btn}        //span[@id="txtStepAddressNextW"]
${house_numbernum}        //span[text()='บ้านเลขที่']
${group_field}        //span[text()='หมู่ที่']
${village_field}        //span[text()='หมู่บ้าน']
${building_field}        //span[text()='อาคาร']
${floor_field}        //span[text()='ชั้น']
${room_at_field}        //span[text()='ห้องที่']
${soi_field}        //span[text()='ซอย']
${road_field}        //span[text()='ถนน']
