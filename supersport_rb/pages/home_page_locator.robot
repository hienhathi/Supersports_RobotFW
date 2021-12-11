*** Variables ***
&{homePageLocator}
...    btn_navigate=xpath=//android.widget.ImageButton[@content-desc="Navigate up"]
...    btn_login=android=UiSelector().resourceIdMatches(".*id/login_text_view$")
...    catalog_locator=xpath=(//android.widget.FrameLayout[2]//android.view.View)[2]
...    btn_navigate_back=xpath=//android.widget.ImageButton[@content-desc="Navigate up"]
...    menu_account=android=UiSelector().text("Account")
...    menu_SALEITEMS=android=UiSelector().text("SALE ITEMS")
...    btn_wishlist=android=UiSelector().resourceIdMatches(".*id/wishlist_button$")
...    btn_catalog=android=UiSelector().resourceIdMatches(".*id/home_Screen_teasers_list$")