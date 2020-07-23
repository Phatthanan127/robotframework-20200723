*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา ขนม ใน google ผ่าน Chrome
    เปิดโครมขึ้นมา
    กรอกข้อมูลที่ต้องการค้นหา
    กด enter หรือกดที่ช่องค้นหา
    รอจนโหลดเสร็จ
    คลิกที่ลิงค์แรกที่ขึ้น
    เสร็จสิ้น
   
*** Keywords ***   
เปิดโครมขึ้นมา
    Open Browser    http://google.co.th    chrome
กรอกข้อมูลที่ต้องการค้นหา
    Input text    q    ขนม
กด enter หรือกดที่ช่องค้นหา
    Press Keys    q    ENTER
รอจนโหลดเสร็จ
    Wait Until Page Contains    ขนม  
คลิกที่ลิงค์แรกที่ขึ้น
    Click link     https://cooking.kapook.com/dessert    
