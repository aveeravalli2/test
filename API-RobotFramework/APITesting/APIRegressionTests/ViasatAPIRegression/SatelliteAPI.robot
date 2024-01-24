*** Settings ***

Library  RequestsLibrary

*** Variables ***
${VIASAT_US_EN}      https://www.viasat.com/content/viasat/us/en.model.json
${PLANS}             https://www.viasat.com/content/viasat/us/en/satellite-internet/plans.model.json
${CARRIER_SERVICES}  https://www.viasat.com/content/viasat/us/en/satellite-internet/plans/carrier-services.model.json
${ADD_ONS}            https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons.model.json
${ADD_ONS_VOIP}       https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/voip.model.json
${BATTERY_BACKUP}    https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/voip/battery-backup.model.json
${SHIELD}            https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/viasat-shield.model.json
${EASYCARE}          https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/easycare.model.json
${OFFICE_HOURS}      https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/office-hours.model.json
${DISH_TV}           https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/dish-tv.model.json
${BROWSER}           https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/viasat-browser.model.json
${EMERGENCY}         https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/emergency-broadband-benefit.model.json
${VIDEO_STREAM}      https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/viasat-stream.model.json
${CURRENT_CUSTOMER}  https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/viasat-stream/current-customer.model.json
${CUSTOMER_THANK}    https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/viasat-stream/current-customer/thank-you.model.json
${CONTENT_PROVIDERS}  https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/viasat-stream/content-providers.model.json
${ADD_ON_AFFORDABLE}    https://www.viasat.com/content/viasat/us/en/satellite-internet/add-ons/affordable-connectivity-program.model.json
${INTALLATION}       https://www.viasat.com/content/viasat/us/en/satellite-internet/satellite-installation.model.json
${SALES}             https://www.viasat.com/content/viasat/us/en/satellite-internet/contact-sales.model.json
${BECOME_RETAILER}   https://www.viasat.com/content/viasat/us/en/satellite-internet/contact-sales/become-a-satellite-retailer.model.json
${FIND_RETAILER}     https://www.viasat.com/content/viasat/us/en/satellite-internet/contact-sales/find-a-satellite-retailer.model.json
${RETAILER_RESULTS}  https://www.viasat.com/content/viasat/us/en/satellite-internet/contact-sales/retailer-results.model.json
${SELL}              https://www.viasat.com/content/viasat/us/en/satellite-internet/sell-viasat-internet.model.json
#${SELL}              https://www.viasat.com/content/viasat/us/en/satellite-internet/contact-sales/sell-viasat-internet.model.json
${FAQ}               https://www.viasat.com/content/viasat/us/en/satellite-internet/faq.model.json
${CUSTOMER_SERVICE}  https://www.viasat.com/content/viasat/us/en/satellite-internet/customer-service.model.json
${AFFORDABLE}      https://www.viasat.com/content/viasat/us/en/satellite-internet/affordable-connectivity-program.model.json
${AFFORDABLE_NEW_CUSTOMER}    https://www.viasat.com/content/viasat/us/en/satellite-internet/affordable-connectivity-program/new-customer.model.json
${AFFORDABLE_CURRENT_CUSTOMER}  https://www.viasat.com/content/viasat/us/en/satellite-internet/affordable-connectivity-program/current-customer.model.json
#${MY_VIASAT_MODEL}         https://www.viasat.com/content/viasat/us/en/satellite-internet/my-viasat.model.json
#${REVIEWS}           https://www.viasat.com/content/viasat/us/en/satellite-internet/reviews.model.json
${REVIEWS_RURAL}             https://www.viasat.com/content/viasat/us/en/satellite-internet/reviews/rural-co.model.json
${SMALL_BUSINESS}    https://www.viasat.com/content/viasat/us/en/satellite-internet/small-business-internet.model.json
${SB_CUSTOMER_SERVICE_MODAL}   https://www.viasat.com/content/viasat/us/en/satellite-internet/small-business-internet/customer-service.model.json
${SB_PLANS}     https://www.viasat.com/content/viasat/us/en/satellite-internet/small-business-internet/plans.model.json
${SB_BACKUP}    https://www.viasat.com/content/viasat/us/en/satellite-internet/small-business-internet/backup-internet.model.json
${SB_OFFERS}    https://www.viasat.com/content/viasat/us/en/satellite-internet/small-business-internet/offers.model.json
${SB_SAVE50}    https://www.viasat.com/content/viasat/us/en/satellite-internet/small-business-internet/offers/save-50.model.json
#${SB_VOIP}              https://www.viasat.com/content/viasat/us/en/satellite-internet/small-business-internet/voip.model.json
#${SB_BUSINESS_HOTSPOTS}    https://www.viasat.com/content/viasat/us/en/satellite-internet/small-business-internet/business-hotspots.model.json
#${SB_SAVE501}   https://www.viasat.com/content/viasat/us/en/satellite-internet/small-business-internet/offers/save-501.model.json
${WILDBLUE}     https://www.viasat.com/content/viasat/us/en/satellite-internet/wildblue.model.json
${EXEDE}        https://www.viasat.com/content/viasat/us/en/satellite-internet/exede.model.json
${WELCOME_MODEL}    https://www.viasat.com/content/viasat/us/en/satellite-internet/welcome.model.json
${FSM}              https://www.viasat.com/content/viasat/us/en/satellite-internet/fsm.model.json
#${WHAT_TO_EXPECT}   https://www.viasat.com/content/viasat/us/en/satellite-internet/welcome/what-to-expect-with-your-first-viasat-internet-billing-statement.model.json
#${SI_OFFERS}        https://www.viasat.com/content/viasat/us/en/satellite-internet/offers.model.json
${SI_SAVE150}       https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/save-150.model.json
${SI_SAVE240}       https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/save-240.model.json
${SI_SAVE300}       https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/save-300.model.json
${SI_OFFERS_PLAN40}  https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/plan-40.model.json
#${SI_SAVE150_NO_HOLIDAY}  https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/save-150-No-Holiday.model.json
#${SI_OFFERS_SAVE240_NO_HOLIDAY}  https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/save-240-No-Holiday.model.json
#${SI_SAVE300_NO_HOLIDAY}        https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/save-300-No-Holiday.model.json
#${SI_PLANS_START49}  https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/plans-start-at-49.model.json
#${SI_OFFERS_SAVE3001}   https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/save-3001.model.json
${SI_QRCODE1}        https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/qrcode1.model.json
${SI_HOW_WE_STACK}      https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/how-we-stack-up.model.json
${SI_OFFERS_DOLLAR_GENERAL}  https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/dollar-general.model.json
${SI_OFFERS_OFFERS_AMERIGAS}  https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/amerigas.model.json
${SI_OFFERS_5G}             https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/viasat-vs-5g.model.json
${SI_OFFERS_GET_MORE_VIASAT}  https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/get-more-with-viasat.model.json
${SI_BEST_OFFER}              https://www.viasat.com/content/viasat/us/en/satellite-internet/best-offer.model.json
#${SI_OFFERS_CUST_CHOICE}    https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/cust-choice-plus-landing-page.model.json
#${SI_OFFERS_SWITCHTO_VIASAT}  https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/switch-to-viasat.model.json
#${SI_OFFERS_VIASATVSHUGHESNET}  https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/viasat-vs-hughesnet.model.json
#${SI_OFFERS_GETMOREVIAST1}      https://www.viasat.com/content/viasat/us/en/satellite-internet/offers/get-more-with-viasat1.model.json
${PARTNERS}        https://www.viasat.com/content/viasat/us/en/satellite-internet/partners.model.json
${PARTNERS_CLEARLINK}   https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/clearlink.model.json
${PARTNERS_MID_AMERICA}  https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/mid-america.model.json
${PARTNERS_NATURAL_INTELLIGENCE}  https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/natural-intelligence.model.json
${PARTNERS_NEXT_ELEVEN}  https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/next-eleven.model.json
${PARTNERS_AD_ACTION}    https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/ad-action.model.json
${PARTNERS_RAWSAW}       https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/rawsaw.model.json
${MANAGEMENT_SERVICES}   https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/management-services-partners.model.json
${PARTNERS_DOMS}         https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/doms-mobile-hut.model.json
${PARTNERS_UASCEND}      https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/uascend.model.json
${PARTNERS_HGTIME}       https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/hztime.model.json
${PARTNERS_ABENITY}      https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/abenity.model.json
${PARTNERS_AGPACK}       https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/ag-pack.model.json
${PARTNERS_CLEARLINK2}    https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/clearlink-2.model.json
${AMERICAN_AIRLINES}    https://www.viasat.com/content/viasat/us/en/satellite-internet/american-airlines.model.json
${GLOBAL_CONNECTIVITY}   https://www.viasat.com/content/viasat/us/en/satellite-internet/global-connectivity.model.json
${GLOBAL_COMMUNITY_INTERNET}  https://www.viasat.com/content/viasat/us/en/satellite-internet/global-connectivity/community-internet.model.json
${TRIBAL_CONNECT}     https://www.viasat.com/content/viasat/us/en/satellite-internet/tribal-connect.model.json
${CAF_II}  https://www.viasat.com/content/viasat/us/en/satellite-internet/caf-ii.model.json
${RURAL_INTERNET_MODEL}  https://www.viasat.com/content/viasat/us/en/satellite-internet/rural-internet.model.json
${OUTAGE_MAP}  https://www.viasat.com/content/viasat/us/en/satellite-internet/outage-map.model.json
${PARTNERS_RAWSAW_OLD}   https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/rawsaw-old.model.json
${PARTNERS_AD_ACTION_OLD}  https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/ad-action-old.model.json
${PARTNERS_NEXT_ELEVEN_OLD}   https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/next-eleven-old.model.json
${PARTNER_PARTNER_TRMPLATE}  https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/partner-template.model.json
${PARTNER_NATURAL_INTELLIGENCE_OLD}  https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/natural-intelligence-old.model.json
${PARTNERS_MID_AMMERICA_OLD}         https://www.viasat.com/content/viasat/us/en/satellite-internet/partners/mid-america-old.model.json

#${PLANS_OLD}      https://www.viasat.com/content/viasat/us/en/satellite-internet/plans-old.model.json
#${PLANS_OLD_CARRIER_SERVICES}   https://www.viasat.com/content/viasat/us/en/satellite-internet/plans-old/carrier-services.model.json
#https://www.viasat.com/content/viasat/us/en/satellite-internet/sandbox-overview-do-not-publish.model.json
#https://www.viasat.com/content/viasat/us/en/satellite-internet/sandbox-carrier-services--do-not-publish.model.json
#https://www.viasat.com/content/viasat/us/en/satellite-internet/sandbox-product-detail-do-not-publish.model.json
#https://www.viasat.com/content/viasat/us/en/satellite-internet/v1-archive.model.json
#https://www.viasat.com/content/viasat/us/en/satellite-internet/v1-archive/fixed-wireless.model.json
#https://www.viasat.com/content/viasat/us/en/satellite-internet/v1-archive/viasat-flex.model.json
#https://www.viasat.com/content/viasat/us/en/satellite-internet/v1-archive/emergency-broadband-benefit-old.model.json
#https://www.viasat.com/content/viasat/us/en/satellite-internet/v1-archive/viasat-shield1.model.json
#https://www.viasat.com/content/viasat/us/en/satellite-internet/v1-archive/viasat-stream1.model.json
#https://www.viasat.com/content/viasat/us/en/satellite-internet/v1-archive/dish-tv-offer.model.json

*** Keywords ***

Get_Request
  [Arguments]   ${request_name}   ${request_url}  ${body_text}
  Create Session    ${request_name}    ${request_url}   verify=true
  ${response} =    GET On Session   ${request_name}     ${request_url}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  ${body_text}

*** Test Cases ***

viasat_us_request
    Get_Request  viasat_us   ${VIASAT_US_EN}    Viasat offers fast
satellite_internet_plans_request
    Get_Request  satellite_plans   ${PLANS}     Check your FCC Affordable Connectivity Program eligibility
satellite_internet_plans_carrier_services_request
    Get_Request  satellite_plans_carrier   ${CARRIER_SERVICES}    Viasat, together with Connect America Fund Phase II (CAF II), offers affordable plans for qualifying areas
satellite_internet_add_ons_request
    Get_Request  satellite_add_ons   ${ADD_ONS}   Explore our home phone service, additional support, security solutions, and more
satellite_internet_add_ons_voip_request
    Get_Request  satellite_add_voip   ${ADD_ONS_VOIP}   Viasat Voice
satellite_internet_add_ons_voip_battery_request
    Get_Request  satellite_add_voip_battery   ${BATTERY_BACKUP}   Back up your Viasat products and power your outdoor lifestyle with 24-hour battery backup from Goal Zero.
satellite_internet_add_ons_shield_request
    Get_Request  satellite_add_ons_shield   ${SHIELD}   Viasat Shield
satellite_internet_add_ons_easycare_request
    Get_Request  satellite_add_ons_easycare   ${EASYCARE}   EasyCare
satellite_internet_add_ons_officehours_request
    Get_Request  satellite_add_ons_officehours  ${OFFICE_HOURS}   Use popular work-from-home apps between 8 a.m. and 5 p.m. without using your data. Add Office Hours to your plan for just $40/mo.
satellite_internet_add_ons_dishtv_request
    Get_Request  satellite_add_ons_dishtv   ${DISH_TV}   Combine Viasat Internet with DISH TV for your&nbsp;whole home internet and entertainment solution!
satellite_internet_add_ons_viasatbrowser_request
    Get_Request  satellite_add_ons_viasatbrowser   ${BROWSER}  Viasat Browser
satellite_internet_add_ons_emergency_request
    Get_Request  satellite_add_ons_emergency   ${EMERGENCY}  The Emergency Broadband Benefit (EBB) program helps qualifiying households stay connected for less.
satellite_internet_add_ons_videostream_request
    Get_Request  satellite_add_ons_videostream   ${VIDEO_STREAM}   Introducing Viasat Stream
satellite_internet_add_ons_videostream_current_request
    Get_Request  satellite_add_ons_videostream_current  ${CURRENT_CUSTOMER}   Add Viasat Stream today!
satellite_internet_add_ons_videostream_customer_thankyou_request
    Get_Request  satellite_add_ons_videostream_customer_thankyou  ${CUSTOMER_THANK}   Thank You
satellite_internet_add_ons_videostream_contentprovider_request
    Get_Request  satellite_add_ons_videostream_contentprovider  ${CONTENT_PROVIDERS}   Content provider requirements
satellite_internet_add_ons_affordable_request
    Get_Request  satellite_add_ons_affordable  ${ADD_ON_AFFORDABLE}   Affordable connectivity program
satellite_internet_installation_request
    Get_Request  satellite_installation   ${INTALLATION}   Enjoy Viasat Internet at your home, typically installed
satellite_sales_request
    Get_Request  satellite_add_ons_sales  ${SALES}   Contact Viasat to get fast, reliable internet service for your home
satellite_becomeretailer_request
    Get_Request  satellite_become_retailer   ${BECOME_RETAILER}   Become a Viasat satellite internet retailer
satellite_find_retailer_request
    Get_Request  satellite_find_retailer   ${FIND_RETAILER}   Find a local Viasat Internet retailer
satellite_retailer_results_request
    Get_Request  satellite_retailer_results   ${RETAILER_RESULTS}   Find a Satellite Retailer Results
satellite_sell_request
    Get_Request  satellite_sell  ${SELL}    Partner with Viasat to sell high-speed
satellite_faq_request
    Get_Request  satellite_faq  ${FAQ}    You can also find answers in the FAQs below
satellite_customerservice_request
    Get_Request  satellite_customerservice  ${CUSTOMER_SERVICE}   Home Internet Customer Service
satellite_affordable_request
    Get_Request  satellite_affordable  ${AFFORDABLE}   See if you qualify for the Federal Communication Commission's (FCC) Affordable Connectivity Program (ACP).
satellite_affordable_newcustomer_request
    Get_Request  satellite_affordable_newcustomer  ${AFFORDABLE_NEW_CUSTOMER}    ACP is a new federal program that offers payment assistance on internet services to keep qualifying customers connected
satellite_affordable_currentcustomer_request
    Get_Request  satellite_affordable_currentcustomer  ${AFFORDABLE_CURRENT_CUSTOMER}   Stay connected for less
satellite_reviews_rural_request
    Get_Request  satellite_reviews_rural  ${REVIEWS_RURAL}  Viasat Internet customer, Leslie Murray, connects at her home and business in rural Park County
satellite_smallbusiness_request
    Get_Request  satellite_smallbusiness  ${SMALL_BUSINESS}   Viasat connects small businesses to fast, reliable satellite internet in areas
satellite_smallbusiness_customer_request
    Get_Request  satellite_smallbusiness_customer  ${SB_CUSTOMER_SERVICE_MODAL}   Information to help you get the most out of your Viasat Business service
satellite_smallbusiness_plans_request
    Get_Request  satellite_smallbusiness_plans  ${SB_PLANS}  Business Internet Plans
satellite_smallbusiness_backup_request
    Get_Request  satellite_smallbusiness_backup  ${SB_BACKUP}   Your first choice for business backup internet
satellite_smallbusiness_offers_request
    Get_Request  satellite_smallbusiness_offers  ${SB_OFFERS}   Depending on the specific Business Unlimited data service plan available at your location
satellite_smallbusiness_offers_save50_request
    Get_Request  satellite_smallbusiness_offers_save50  ${SB_SAVE50}  Get $50 off your first month and installation
satellite_wildblue_request
    Get_Request  satellite_wildblue  ${WILDBLUE}   Home internet service and customer support when you need it
satellite_excede_request
    Get_Request  satellite_wildblue  ${EXEDE}   Home internet service and customer support when you need it
satellite_welcome_request
    Get_Request  satellite_welcome  ${WELCOME_MODEL}  Welcome to Viasat!
satellite_FSM_request
    Get_Request  satellite_FSM  ${FSM}  Field Service Management (FSM)
satellite_offers150_request
    Get_Request  satellite_offers150   ${SI_SAVE150}   Save up to $150
satellite_offers240_request
    Get_Request  satellite_offers240   ${SI_SAVE240}    plus save up to $240
satellite_offers300_request
    Get_Request  satellite_offers300   ${SI_SAVE300}     up to 300 GB of High-Speed Data
satellite_offers_plan40_request
    Get_Request  satellite_offers_plan40  ${SI_OFFERS_PLAN40}    Save with plans as low as $39.99 for fast home internet!
satellite_offers_QR_request
    Get_Request  satellite_offers_plan40  ${SI_QRCODE1}   SEE PLANS AND DEALS
satellite_offers_howwestack_request
    Get_Request  satellite_offers_howwestack  ${SI_HOW_WE_STACK}  High-speed internet to 99% of the U.S
satellite_offers_dollargeneral_request
    Get_Request  satellite_offers_dollargeneral  ${SI_OFFERS_DOLLAR_GENERAL}   The exclusive offer for Dollar General customers will be added after you order service
satellite_offers_amerigas_request
    Get_Request  satellite_offers_amerigas  ${SI_OFFERS_OFFERS_AMERIGAS}    Exclusive offer for AmeriGas
satellite_offers_5g_request
    Get_Request  satellite_offers_5g  ${SI_OFFERS_5G}  Satellite internet can provide a high-quality connection to more places than nearly any other type of internet
satellite_offersgetmore_request
    Get_Request  satellite_offers_getmore  ${SI_OFFERS_GET_MORE_VIASAT}   Get more with reliable home internet from Viasat
satellite_offers_bestoffer_request
    Get_Request  satellite_offers_bestoffer  ${SI_BEST_OFFER}   Viasat's satellite internet service lets you work
satellite_partners_request
    Get_Request  satellite_partners  ${PARTNERS}     Partners
satellite_partners_clearlink_request
    Get_Request  satellite_partners_clearlink   ${PARTNERS_CLEARLINK}   Experience fast speeds
satellite_partners_midamerica_request
    Get_Request  satellite_partners_midamerica  ${PARTNERS_MID_AMERICA}   With Viasat satellite internet
satellite_partners_natural_request
    Get_Request  satellite_partners_natural  ${PARTNERS_NATURAL_INTELLIGENCE}   With Viasat satellite internet
satellite_partners_nexteleven_request
    Get_Request  satellite_partners_nexteleven  ${PARTNERS_NEXT_ELEVEN}  With Viasat satellite internet
satellite_partners_Ad_request
    Get_Request  satellite_partners_ad  ${PARTNERS_AD_ACTION}   With Viasat satellite internet
satellite_partners_rawsaw_request
    Get_Request  satellite_partners_rawsaw  ${PARTNERS_RAWSAW}   With Viasat satellite internet
satellite_partners_managementservices_request
    Get_Request  satellite_partners_managementservices  ${MANAGEMENT_SERVICES}   With Viasat satellite internet
satellite_partners_doms_request
    Get_Request  satellite_partners_doms  ${PARTNERS_DOMS}   With Viasat satellite internet
satellite_partners_unascend_request
    Get_Request  satellite_partners_unascend  ${PARTNERS_UASCEND}   With Viasat satellite internet
satellite_partners_hgtime_request
    Get_Request  satellite_partners_hgtime  ${PARTNERS_HGTIME}   With Viasat satellite internet
satellite_partners_abenity_request
    Get_Request  satellite_partners_abenity  ${PARTNERS_ABENITY}  The exclusive offer for Abenity will be added after you order service
satellite_partners_agpack_request
    Get_Request  satellite_partners_agpack  ${PARTNERS_AGPACK}  Exclusive offer for AgPack and new Viasat customers
#satellite_partners_clearlink2_request
#    Get_Request  satellite_partners_clearlink2  ${PARTNERS_CLEARLINK2}   Viasat delivers the speed and dependability you need no matter where you live
satellite_americanairlines_request
    Get_Request  satellite_americanairlines  ${AMERICAN_AIRLINES}   American Airlines
satellite_global_request
    Get_Request  satellite_global  ${GLOBAL_CONNECTIVITY}   Viasat is helping make the internet more accessible
satellite_global_community_request
    Get_Request  satellite_global_community   ${GLOBAL_COMMUNITY_INTERNET}   We're helping foster digital inclusion where it's needed most
satellite_tribal_request
    Get_Request  satellite_tribal   ${TRIBAL_CONNECT}   Working with tribal elders and leaders
satellite_caf_request
    Get_Request  satellite_caf   ${CAF_II}   Viasat, together with Connect America Fund Phase II
satellite_rural_request
    Get_Request  satellite_rural   ${RURAL_INTERNET_MODEL}   including rural and remote locations
satellite_outage_request
    Get_Request  satellite_outagemap   ${OUTAGE_MAP}   Check for potential outages in your area by entering your service location
#satellite_rawsawold_request
#    Get_Request  satellite_rawsawold   ${PARTNERS_RAWSAW_OLD}  All Choice Connect is pleased to offer Viasat satellite internet
#satellite_noactionold_request
#    Get_Request  satellite_noactionold   ${PARTNERS_AD_ACTION_OLD}   Viasat brings satellite internet to wherever you call home
#satellite_nextelevenold_request
#    Get_Request  satellite_nextelevenold   ${PARTNERS_NEXT_ELEVEN_OLD}  Fast Internet
#satellite_partnertemplate_request
#    Get_Request  satellite_partnertemplate   ${PARTNER_PARTNER_TRMPLATE}  Fast Internet
#satellite_Intellegenceold_request
#    Get_Request  satellite_Intellegenceold   ${PARTNER_NATURAL_INTELLIGENCE_OLD}  Fast Internet
#satellite_midamericaold_request
#    Get_Request  satellite_midamericaold   ${PARTNERS_MID_AMMERICA_OLD}  Fast Internet