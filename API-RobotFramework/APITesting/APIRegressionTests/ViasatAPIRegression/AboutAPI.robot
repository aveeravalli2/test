*** Settings ***

Library  RequestsLibrary

*** Variables ***
${VIASAT_US_ABOUT}      https://www.viasat.com/content/viasat/us/en/about.model.json
${ABOUT_AWARDS}    https://www.viasat.com/content/viasat/us/en/about/awards.model.json
${ABOUT_QUICK_FACTS}   https://www.viasat.com//content/viasat/us/en/about/quick-facts.model.json
${ABOUT_LEADERSHIP}            https://www.viasat.com//content/viasat/us/en/about/leadership-team.model.json
${ABOUT_LEADERSHIP_MARK}      https://www.viasat.com//content/viasat/us/en/about/leadership-team/mark-dankberg.model.json
${ABOUT_LEADERSHIP_RICHARD}    https://www.viasat.com/content/viasat/us/en/about/leadership-team/richard-baldridge.model.json
${ABOUT_LEADERSHIP_ROBERT}            https://www.viasat.com/content/viasat/us/en/about/leadership-team/robert-blair.model.json
${ABOUT_LEADERSHIP_GIRISH}          https://www.viasat.com//content/viasat/us/en/about/leadership-team/girish-chandran.model.json
${ABOUT_LEADERSHIP_EVAN}      https://www.viasat.com//content/viasat/us/en/about/leadership-team/evan-dixon.model.json
${ABOUT_LEADERSHIP_JIMMY}           https://www.viasat.com//content/viasat/us/en/about/leadership-team/jimmy-dodd.model.json
${ABOUT_LEADERSHIP_SHAWN}           https://www.viasat.com//content/viasat/us/en/about/leadership-team/shawn-duffy.model.json
${ABOUT_LEADERSHIP_KEVIN_HARKENRIDER}         https://www.viasat.com//content/viasat/us/en/about/leadership-team/kevin-harkenrider.model.json
${ABOUT_LEADERSHIP_MELINDA}      https://www.viasat.com//content/viasat/us/en/about/leadership-team/melinda-kimbro.model.json
${ABOUT_LEADERSHIP_KEVIN_LIPPERT}  https://www.viasat.com//content/viasat/us/en/about/leadership-team/keven-lippert.model.json
${ABOUT_LEADERSHIP_MARK_MILLER}    https://www.viasat.com//content/viasat/us/en/about/leadership-team/mark-miller.model.json
${ABOUT_LEADERSHIP_KRISHNA_NATHAN}  https://www.viasat.com//content/viasat/us/en/about/leadership-team/krishna-nathan.model.json
${ABOUT_LEADERSHIP_KEN}   https://www.viasat.com//content/viasat/us/en/about/leadership-team/ken-peterman.model.json
${ABOUT_LEADERSHIP_DAVID}       https://www.viasat.com//content/viasat/us/en/about/leadership-team/david-ryan.model.json
${ABOUT_LEADERSHIP_CRAIG}             https://www.viasat.com//content/viasat/us/en/about/leadership-team/craig-miller.model.json
${ABOUT_HISTORY}   https://www.viasat.com//content/viasat/us/en/about/history.model.json
${ABOUT_NEWSROOM}     https://www.viasat.com//content/viasat/us/en/about/newsroom.model.json
${ABOUT_NEWSROOM_PRESS-RELEASES}  https://www.viasat.com//content/viasat/us/en/about/newsroom/press-releases.model.json
${ABOUT_NEWSROOM_PRESS}  https://www.viasat.com//content/viasat/us/en/about/newsroom/press-resources.model.json
${ABOUT_NEWSROOM_BLOG}  https://www.viasat.com//content/viasat/us/en/about/newsroom/blog.model.json
${ABOUT_NEWSROOM_SUBSCRIBE}   https://www.viasat.com//content/viasat/us/en/about/newsroom/subscribe-now.model.json
${ABOUT_WHAT_WE_BELIEVE}   https://www.viasat.com//content/viasat/us/en/about/what-we-believe.model.json
${ABOUT_WHAT_WE_BELIEVE_SPACE_POLICY}   https://www.viasat.com//content/viasat/us/en/about/what-we-believe/space-policy.model.json
${ABOUT_WHAT_WE_BELIEVE_SPACE_POLICY_ENVIRONMENTAL}   https://www.viasat.com//content/viasat/us/en/about/what-we-believe/space-policy/environmental-impact.model.json
${ABOUT_WHAT_WE_BELIEVE_CORPORATE_GIVING}   https://www.viasat.com//content/viasat/us/en/about/what-we-believe/corporate-giving.model.json
${ABOUT_WHAT_WE_BELIEVE_CORPORATE_GIVING_REQUEST}  https://www.viasat.com//content/viasat/us/en/about/what-we-believe/corporate-giving/request-form.model.json
${ABOUT_WHAT_WE_BELIEVE_CORPORATE_GIVING_REQUEST_THANKYOU}  https://www.viasat.com//content/viasat/us/en/about/what-we-believe/corporate-giving/request-form.model.json
${ABOUT_WHAT_WE_BELIEVE_CORPORATE_GIVING_REQUEST_SKILLS}   https://www.viasat.com//content/viasat/us/en/about/what-we-believe/corporate-giving/skills-based-volunteering.model.json
${ABOUT_WHAT_WE_BELIEVE_CORPORATE_SUSTAINABILITY}  https://www.viasat.com//content/viasat/us/en/about/what-we-believe/corporate-sustainability.model.json
${ABOUT_WHAT_WE_BELIEVE_CORPORATE_SUSTAINABILITY_WHAT_ON}  https://www.viasat.com//content/viasat/us/en/about/what-we-believe/corporate-sustainability/what-on-earth.model.json
${ABOUT_WHAT_WE_BELIEVE_CORPORATE_GIVING_STEM}   https://www.viasat.com//content/viasat/us/en/about/what-we-believe/corporate-giving/stem.model.json
${ABOUT_WHAT_WE_BELIEVE_CSR}   https://www.viasat.com//content/viasat/us/en/about/what-we-believe/csr-report.model.json
${ABOUT_WHAT_WE_BELIEVE_DIVERSITY}   https://www.viasat.com//content/viasat/us/en/about/what-we-believe/diversity-and-inclusion-in-the-workplace.model.json
${ABOUT_WHAT_WE_BELIEVE_DIVERSITY_AWARDS}  https://www.viasat.com//content/viasat/us/en/about/what-we-believe/diversity-and-inclusion-in-the-workplace/engagement-awards.model.json
${ABOUT_WHAT_WE_BELIEVE_DIVERSITY_INCLUSION}  https://www.viasat.com///content/viasat/us/en/about/what-we-believe/digital-inclusion.model.json
${ABOUT_WHAT_WE_DO}  https://www.viasat.com//content/viasat/us/en/about/what-we-do.model.json
${ABOUT_WHAT_WE_DO_QUICK_FACTS}  https://www.viasat.com//content/viasat/us/en/about/what-we-do/quick-facts.model.json
${ABOUT_WHO_WE_ARE}  https://www.viasat.com//content/viasat/us/en/about/who-we-are.model.json
${ABOUT_WHO_WE_ARE_AWARDS}  https://www.viasat.com//content/viasat/us/en/about/who-we-are/awards-history.model.json
${ABOUT_WHO_WE_ARE_LOCATIONS}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/locations.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-leadership.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_MARK}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-leadership/mark-dankberg.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_GURU}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-leadership/guru-gowrappan.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_ROBERT}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-leadership/robert-blair.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_GIRISH}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-leadership/girish-chandran.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_EVAN}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-leadership/evan-dixon.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_JIMMY}   https://www.viasat.com//content/viasat/us/en/about/who-we-are/viasat-leadership/jimmy-dodd.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_SHAWN}   https://www.viasat.com//content/viasat/us/en/about/who-we-are/viasat-leadership/shawn-duffy.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_KEVIN_HARKENRIDER}  https://www.viasat.com//content/viasat/us/en/about/who-we-are/viasat-leadership/kevin-harkenrider.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_KEVIN_LIPPERT}  https://www.viasat.com//content/viasat/us/en/about/who-we-are/viasat-leadership/keven-lippert.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_CRIAG}  https://www.viasat.com//content/viasat/us/en/about/who-we-are/viasat-leadership/craig-miller.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_MARKMILLER}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-leadership/mark-miller.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_KRISHNA}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-leadership/krishna-nathan.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_BEN}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-leadership/ben-palmer.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_SUSAN}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-leadership/susan-miller.model.json
${ABOUT_WHO_WE_ARE_LEDEARSHIP_JASON_SMITH}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-leadership/jason-smith.model.json
${ABOUT_WHO_WE_ARE_QUICKFACTS}  https://www.viasat.com//content/viasat/us/en/about/who-we-are/quick-facts.model.json
${ABOUT_WHO_WE_ARE_HISTORY}  https://www.viasat.com/content/viasat/us/en/about/who-we-are/viasat-history.model.json
${ABOUT_CAREERS}  https://www.viasat.com//content/viasat/us/en/about/careers.model.json
${ABOUT_VIASAT_BUILD}   https://www.viasat.com//content/viasat/us/en/about/viasat-build.model.json
${ABOUT_VIASAT3}  https://www.viasat.com//content/viasat/us/en/about/viasat-3.model.json
${ABOUT_VIASAT3_CAPACITY}  https://www.viasat.com//content/viasat/us/en/about/viasat-3/capacity.model.json
${ABOUT_VIASAT3_THANK}  https://www.viasat.com//content/viasat/us/en/about/viasat-3/thank-you.model.json
${ABOUT_VIASAT3_THANK_GLOBAL}  https://www.viasat.com//content/viasat/us/en/about/viasat-3/thank-you---global.model.json
${ABOUT_VIASAT3_THANK_DYNAMIC}  https://www.viasat.com//content/viasat/us/en/about/viasat-3/thank-you---dynamic.model.json
${ABOUT_VIASAT3_THANK_CAPCITY}   https://www.viasat.com//content/viasat/us/en/about/viasat-3/thank-you---capacity.model.json
${ABOUT_VIASAT3_THANK_DYNAMIC_BANDWIDTH}  https://www.viasat.com//content/viasat/us/en/about/viasat-3/dynamic-bandwidth.model.json
${ABOUT_VIASAT3_GLOBAL}  https://www.viasat.com//content/viasat/us/en/about/viasat-3/global.model.json
${ABOUT_VIASATINMARSAT}  https://www.viasat.com//content/viasat/us/en/about/viasatinmarsat.model.json


*** Keywords ***

Get_Request
  [Arguments]   ${request_name}   ${request_url}  ${body_text}
  Create Session    ${request_name}    ${request_url}   verify=true
  ${response} =    GET On Session   ${request_name}     ${request_url}
  Should Be Equal As Strings    ${response.status_code}    200
  ${body}=  Convert To String  ${response.content}
  Should Contain  ${body}  ${body_text}

*** Test Cases ***

viasat_us_about_request
    Get_Request  viasat_about   ${VIASAT_US_ABOUT}     benefits of space technology
about_awards_request
    Get_Request  viasat_about_awards   ${ABOUT_AWARDS}     Viasat awards & recognition
about_quickfacts_request
    Get_Request  viasat_about_quickfacts   ${ABOUT_QUICK_FACTS}    About Viasat
about_leadership_request
    Get_Request  about_leadership  ${ABOUT_LEADERSHIP}   About Viasat
about_leadership_mark_request
    Get_Request  about_leadership_mark   ${ABOUT_LEADERSHIP_MARK}   Chairman of the Board
about_leadership_richard_request
    Get_Request  about_leadership_richard   ${ABOUT_LEADERSHIP_RICHARD}   Rick Baldridge
about_leadership_robert_request
    Get_Request  about_leadership_robert  ${ABOUT_LEADERSHIP_ROBERT}   Robert
about_leadership_girish_request
    Get_Request  about_leadership_girish   ${ABOUT_LEADERSHIP_GIRISH}   Girish Chandran
about_leadership_evan_request
    Get_Request  about_leadership_evan  ${ABOUT_LEADERSHIP_EVAN}   Evan Dixon
about_leadership_jimmy_request
    Get_Request  about_leadership_jimmy   ${ABOUT_LEADERSHIP_JIMMY}   Jimmy Dodd
about_leadership_shawn_request
    Get_Request  about_leadership_shawn   ${ABOUT_LEADERSHIP_SHAWN}  Shawn Duffy
about_leadership_kevin_request
    Get_Request   about_leadership_kevin   ${ABOUT_LEADERSHIP_KEVIN_HARKENRIDER}  Kevin Harkenrider
about_leadership_melinda_request
    Get_Request   about_leadership_melinda   ${ABOUT_LEADERSHIP_MELINDA}   Melinda Kimbro
about_leadership_lippert_request
    Get_Request   about_leadership_lippert  ${ABOUT_LEADERSHIP_KEVIN_LIPPERT}   Keven Lippert
about_leadership_markmiller_request
    Get_Request   about_leadership_markmiller  ${ABOUT_LEADERSHIP_MARK_MILLER}   Mark Miller
about_leadership_krishna_request
    Get_Request   about_leadership_krishna  ${ABOUT_LEADERSHIP_KRISHNA_NATHAN}   Krishna
about_leadership_ken_request
    Get_Request   about_leadership_ken  ${ABOUT_LEADERSHIP_KEN}   Ken
about_leadership_david_request
    Get_Request   about_leadership_david   ${ABOUT_LEADERSHIP_DAVID}   David
about_leadership_craig_request
    Get_Request   about_leadership_craig  ${ABOUT_LEADERSHIP_CRAIG}   Craig
about_history_request
    Get_Request   about_history   ${ABOUT_HISTORY}   2019 Awards for Excellence
about_newsroom_request
    Get_Request   about_newsroom  ${ABOUT_NEWSROOM}   Your source for the latest news
about_newsroom_press_releases_request
    Get_Request  about_newsroom_press_releases   ${ABOUT_NEWSROOM_PRESS-RELEASES}   Press releases
about_newsroom_press_request
    Get_Request  about_newsroom_press   ${ABOUT_NEWSROOM_PRESS}   Press
about_newsroom_blog_request
    Get_Request  about_newsroom_blog  ${ABOUT_NEWSROOM_BLOG}    Blog
about_newsroom_subscribe_request
    Get_Request  about_newsroom_subscribe  ${ABOUT_NEWSROOM_SUBSCRIBE}    Subscribe Now
about_what_we_believe_request
    Get_Request  about_what_we_believe  ${ABOUT_WHAT_WE_BELIEVE}    here to find it
about_what_we_believe_space_policy_request
    Get_Request  about_what_we_believe_space_policy  ${ABOUT_WHAT_WE_BELIEVE_SPACE_POLICY}    Learn how Viasat is modeling low earth orbit
about_what_we_believe_space_policy_env_request
    Get_Request  about_what_we_believe_space_policy_env   ${ABOUT_WHAT_WE_BELIEVE_SPACE_POLICY_ENVIRONMENTAL}    Space sustainability
about_what_we_believe_corporate_giving_request
    Get_Request  about_what_we_believe_corporate_giving  ${ABOUT_WHAT_WE_BELIEVE_CORPORATE_GIVING}    Community Initiatives
about_what_we_believe_corporate_giving_form_request
    Get_Request  about_what_we_believe_corporate_giving_request  ${ABOUT_WHAT_WE_BELIEVE_CORPORATE_GIVING_REQUEST}  Community Initiatives
about_what_we_believe_corporate_giving_request_thank_request
    Get_Request  about_what_we_believe_corporate_giving_request_thank  ${ABOUT_WHAT_WE_BELIEVE_CORPORATE_GIVING_REQUEST_THANKYOU}   Corporate Giving
about_what_we_believe_corporate_giving_request_skills_request
    Get_Request  about_what_we_believe_corporate_giving_request_skills  ${ABOUT_WHAT_WE_BELIEVE_CORPORATE_GIVING_REQUEST_SKILLS}   Skills
about_what_we_believe_corporate_sustainability_request
    Get_Request  about_what_we_believe_corporate_sustainability  ${ABOUT_WHAT_WE_BELIEVE_CORPORATE_SUSTAINABILITY}  See how Viasat is protecting the environment
about_what_we_believe_corporate_sustainability_what_request
    Get_Request  about_what_we_believe_corporate_sustainability_what  ${ABOUT_WHAT_WE_BELIEVE_CORPORATE_SUSTAINABILITY_WHAT_ON}   We cannot see what goes on in the vast vacuum of space
about_what_we_believe_corporate_stem_request
    Get_Request  about_what_we_believe_corporate_stem  ${ABOUT_WHAT_WE_BELIEVE_CORPORATE_GIVING_STEM}   Our STEM innovation competition
about_what_we_believe_csr_request
    Get_Request  about_what_we_believe_csr  ${ABOUT_WHAT_WE_BELIEVE_CSR}  Viasat is always finding better ways to connect the world
about_what_we_believe_diversity_request
    Get_Request  about_what_we_believe_diversity  ${ABOUT_WHAT_WE_BELIEVE_DIVERSITY}   See how Viasat empowers employees to do their best
about_what_we_believe_awards_request
    Get_Request  about_what_we_believe_awards  ${ABOUT_WHAT_WE_BELIEVE_DIVERSITY_AWARDS}   inclusion in the workplace
about_what_we_believe_diversity_inclusion_request
    Get_Request  about_what_we_believe_diversity  ${ABOUT_WHAT_WE_BELIEVE_DIVERSITY_INCLUSION}  Digital inclusion is directly
about_what_we_do_request
    Get_Request  about_what_we_do  ${ABOUT_WHAT_WE_DO}   Viasat brings affordable
about_what_we_do_quickfacts_request
    Get_Request  about_what_we_do_quickfacts   ${ABOUT_WHAT_WE_DO_QUICK_FACTS}    Viasat at a glance
about_what_we_are_request
    Get_Request  about_what_we_are   ${ABOUT_WHO_WE_ARE}    Viasat brings connectivity
about_what_we_are_awards_request
    Get_Request  about_what_we_are_awards  ${ABOUT_WHO_WE_ARE_AWARDS}     Viasat awards and recognition
about_what_we_are_locations_request
    Get_Request  about_what_we_are_locations  ${ABOUT_WHO_WE_ARE_LOCATIONS}    Viasat has many offices located throughout the world
about_what_we_are_leadership_request
    Get_Request  about_what_we_are_leadership  ${ABOUT_WHO_WE_ARE_LEDEARSHIP}   Viasat leadership
about_what_we_are_leadership_mark_request
    Get_Request  about_what_we_are_leadership_mark  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_MARK}  Mark Dankberg
about_what_we_are_leadership_guru_request
    Get_Request  about_what_we_are_leadership_guru  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_GURU}   Guru Gowrappan
about_what_we_are_leadership_robert_request
    Get_Request  about_what_we_are_leadership_robert  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_ROBERT}   Robert Blair
about_what_we_are_leadership_girish_request
    Get_Request  about_what_we_are_leadership_girish  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_GIRISH}   Girish Chandran
about_what_we_are_leadership_evan_request
    Get_Request  about_what_we_are_leadership_evan  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_EVAN}   Evan Dixon
about_what_we_are_leadership_jimmy_request
    Get_Request  about_what_we_are_leadership_jimmy  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_JIMMY}   Jimmy Dodd
about_what_we_are_leadership_shawn_request
    Get_Request  about_what_we_are_leadership_shawn  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_SHAWN}     Shawn Duffy
about_what_we_are_leadership_kevinharkenrider_request
    Get_Request  about_what_we_are_leadership_kevinharkenrider   ${ABOUT_WHO_WE_ARE_LEDEARSHIP_KEVIN_HARKENRIDER}   Kevin Harkenrider
about_what_we_are_leadership_kevinlipart_request
    Get_Request  about_what_we_are_leadership_kevinlipart  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_KEVIN_LIPPERT}   Keven Lippert
about_what_we_are_leadership_craig_request
    Get_Request  about_what_we_are_leadership_craig  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_CRIAG}   Craig Miller
about_what_we_are_leadership_markmiller_request
    Get_Request  about_what_we_are_leadership_markmiller  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_MARKMILLER}  Mark Miller
about_what_we_are_leadership_krishna_request
    Get_Request  about_what_we_are_leadership_krishna  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_KRISHNA}   Krishna Nathan
about_what_we_are_leadership_ben_request
    Get_Request  about_what_we_are_leadership_ben  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_BEN}   Ben Palmer
about_what_we_are_leadership_susan_request
    Get_Request  about_what_we_are_leadership_susan  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_SUSAN}   Susan Miller
about_what_we_are_leadership_jason_request
    Get_Request  about_what_we_are_leadership_jason  ${ABOUT_WHO_WE_ARE_LEDEARSHIP_JASON_SMITH}   Jason Smith
about_what_we_are_leadership_quickfacts_request
    Get_Request  about_what_we_are_leadership_quickfacts  ${ABOUT_WHO_WE_ARE_QUICKFACTS}   Viasat Quick Facts
about_what_we_are_history_request
    Get_Request  about_what_we_are_history  ${ABOUT_WHO_WE_ARE_HISTORY}   ViaSat-3 Americas successfully launched
about_careers_request
    Get_Request  about_careers  ${ABOUT_CAREERS}  Careers
about_viasat_build_request
    Get_Request  about_viasat_build  ${ABOUT_VIASAT_BUILD}  ViaSat-3
about_viasat3_request
    Get_Request  about_viasat3  ${ABOUT_VIASAT3}   ViaSat-3 constellation
about_viasat_capacity_request
    Get_Request  about_viasat_capacity  ${ABOUT_VIASAT3_CAPACITY}   ViaSat-3 constellation
about_viasat3_thank_request
    Get_Request  about_viasat3_thank   ${ABOUT_VIASAT3_THANK}   Thank you
about_viasat_global_thank_request
    Get_Request  about_viasat_global   ${ABOUT_VIASAT3_THANK_GLOBAL}   Thank you
about_viasat_dynamic_thank_request
    Get_Request  about_viasat_dynamic_thank   ${ABOUT_VIASAT3_THANK_DYNAMIC}   Thank you
about_viasat3_thank_capacity_request
    Get_Request  about_viasat3_thank_capacity  ${ABOUT_VIASAT3_THANK_CAPCITY}   Thank you
about_viasat_thank_bandwidth_request
    Get_Request  about_viasat_thank_bandwidth  ${ABOUT_VIASAT3_THANK_DYNAMIC_BANDWIDTH}  the targeting field of a satellite signal
about_viasat_global_request
    Get_Request  about_viasat_global   ${ABOUT_VIASAT3_GLOBAL}   The ViaSat-3 constellation
about_viasat_inmarsat_request
    Get_Request  about_viasat_inmarsat  ${ABOUT_VIASATINMARSAT}  Our business Brings together

