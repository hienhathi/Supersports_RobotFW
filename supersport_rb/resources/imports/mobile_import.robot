*** Setting ***
# Setting
Resource    ${CURDIR}/base_import.robot

# API
Resource    ${CURDIR}/../../keywords/api/common_api.robot
Resource    ${CURDIR}/../../keywords/api/wishlist_api.robot

# keywords
Resource    ${CURDIR}/../../keywords/mobile/common/common_android_keywords.robot
Resource    ${CURDIR}/../../keywords/mobile/common/common_android_functions.robot
Resource    ${CURDIR}/../../keywords/mobile/pages_keyword/home_page_keyword.robot
Resource    ${CURDIR}/../../keywords/mobile/pages_keyword/login_page_keyword.robot
Resource    ${CURDIR}/../../keywords/mobile/pages_keyword/product_detail_page_keyword.robot
Resource    ${CURDIR}/../../keywords/mobile/pages_keyword/product_list_page_keyword.robot
Resource    ${CURDIR}/../../keywords/mobile/pages_keyword/wishlist_page_keyword.robot

# Pages
Resource    ${CURDIR}/../../pages/product_detail_page_locator.robot
Resource    ${CURDIR}/../../pages/product_list_page_locator.robot
Resource    ${CURDIR}/../../pages/home_page_locator.robot
Resource    ${CURDIR}/../../pages/login_page_locator.robot
Resource    ${CURDIR}/../../pages/wishlist_page_locator.robot

