*** Variables ***
&{wishlistPageLocator}
...    btn_remove=android=UiSelector().resourceIdMatches(".*id/login_button$")
...    lb_product_name=android=UiSelector().resourceIdMatches(".*id/item_name$")
...    lb_product_price=android=UiSelector().resourceIdMatches(".*id/item_price$")
...    btn_remove=android=UiSelector().resourceIdMatches(".*id/delete_button$")
...    lb_item_name=xpath=//android.widget.TextView[@text="{item_name}"]