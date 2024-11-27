*** Settings ***
Library           SeleniumLibrary

*** Variables ***
# General
${URL}                        https://mediverse.id/ 
${BROWSER}                    chrome
${CLOSE_POPUP}                //div[@id="portal"]/div/div/div
${CLOSE_MITRA}                //div[@id='portal']/div/div/div

# Home
${BUTTON_DOWNLOAD}            //button[.//span[text()='Download App']]
${BUTTON_GABUNG_MITRA}        //button[text()='Gabung Mitra']

# Produk
${PRODUK}                     //a[text()='Produk']
${CLICK_Madevo}               //h1[text()='Medevo']
${CLICK_Medpharm}             //h1[text()='Medpharm']
${CLICK_Medpoint}             //h1[text()='Medpoint']
${CLICK_EHR}                  //h1[text()='EHR']
${VALIDASI_Madevo}            //h1[contains(text(), 'Konsultasi Dokter Online')]
${VALIDASI_Medpharm}          //h1[contains(text(), 'Beli Obat di')]
${VALIDASI_Medpoint}          //h1[contains(text(), 'Buat Janji Konsultasi di')]
${VALIDASI_EHR}               //h1[contains(text(), 'Electronic Health Record')]

# Mitra
${MITRA}                      //a[text()='Mitra']
${BUTTON_MITRA}               //button[text()='Mendaftar Kemitraan']

# Blog
${BLOG}                       //a[text()='Blog']

# Promo
${PROMO}                       //a[text()='Promo']

# Tentang Kami
${ABOUT}                       //a[text()='Tentang Kami']
${BUTTON_KONTAK_KAMI}          //button[h3[text()='Kontak Kami']]

*** Test Cases ***
# Open Mediverse
#     Open Landing Page            
#     Close Popup               
    
#     Gaabung Mitra     
#     Button Download
                        
    
#     Close Browser                                                                  
    
Open Product
    Open Landing Page                                                      
    Close Popup

    Click Element                        ${PRODUK}

    Validasi Madevo
    Validasi Medpharm
    Validasi Medpoint
    Validai EHR
    
    Close Browser

# Open Mitra
#     Open Landing Page
#     Open Landing Page                                                      
#     Close Popup

#     Click Element                        ${MITRA}
#     Daftar Kemitraan
    
#     Close Browser

# Open Blog
#     Open Landing Page
#     Open Landing Page                                                      
#     Close Popup

#     Click Element                        ${BLOG}

#     Close Browser

# Open Promo
#     Open Landing Page
#     Open Landing Page                                                      
#     Close Popup

#     Click Element                        ${PROMO}

#     Close Browser

# Open Tentang Kami
#     Open Landing Page           
#     Close Popup
#     Open Landing Page                                                      
#     Close Popup

#     Click Element                        ${ABOUT}
#     Kontak Kami

#     Close Browser    
    
*** Keywords ***

# General
Open Landing Page
    Open Browser                         ${URL}        chrome
    Maximize Browser Window         

Close Popup
    Wait Until Element Is Visible        ${CLOSE_POPUP}                  5s
    Click Element                        ${CLOSE_POPUP}

Gaabung Mitra
    Wait Until Element Is Visible        ${BUTTON_GABUNG_MITRA}
    Click Element                        ${BUTTON_GABUNG_MITRA}
    Click Element                        ${CLOSE_MITRA}   

Button Download
    Wait Until Element Is Visible        ${BUTTON_DOWNLOAD}             5s             
    Click Element                        ${BUTTON_DOWNLOAD}    

Validasi Madevo
    Scroll Element Into View             ${CLICK_Madevo}                            # Scroll
    Click Element                        ${CLICK_Madevo}
    Scroll Element Into View             ${VALIDASI_Madevo}
    Wait Until Element Is Visible        ${VALIDASI_Madevo}        5s
    Element Should Be Visible            ${VALIDASI_Madevo} 

Validasi Medpharm
    Scroll Element Into View             ${CLICK_Medpharm}                            # Scroll
    Click Element                        ${CLICK_Medpharm}
    Scroll Element Into View             ${VALIDASI_Medpharm}
    Wait Until Element Is Visible        ${VALIDASI_Medpharm}       5s
    Element Should Be Visible            ${VALIDASI_Medpharm}  

Validasi Medpoint
    Scroll Element Into View             ${CLICK_Medpoint}                            # Scroll
    Click Element                        ${CLICK_Medpoint}
    Scroll Element Into View             ${VALIDASI_Medpoint}
    Wait Until Element Is Visible        ${VALIDASI_Medpoint}       5s
    Element Should Be Visible            ${VALIDASI_Medpoint}   

Validai EHR
    Scroll Element Into View             ${CLICK_EHR}                            # Scroll
    Click Element                        ${CLICK_EHR}
    Scroll Element Into View             ${VALIDASI_EHR}
    Wait Until Element Is Visible        ${VALIDASI_EHR}           5s
    Element Should Be Visible            ${VALIDASI_EHR}    

Daftar Kemitraan
    Scroll Element Into View             ${BUTTON_MITRA}
    Click Element                        ${BUTTON_MITRA}
    Click Element                        ${CLOSE_MITRA}        
    Sleep    5s

Kontak Kami
    Scroll Element Into View             ${BUTTON_KONTAK_KAMI}
    Click Element                        ${BUTTON_KONTAK_KAMI}
    Click Element                        ${CLOSE_MITRA} 