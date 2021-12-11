*** Variables ***
&{productDetailPageLocator}
...    btn_add_to_wishlist=android=UiSelector().resourceIdMatches(".*id/wish_list_button$")
...    lbl_product_price=android=UiSelector().resourceIdMatches(".*id/product_price_normal$")
...    lb_product_name=android=UiSelector().resourceIdMatches(".*id/product_name$")
...    btn_add_to_bag=android=UiSelector().resourceIdMatches(".*id/add_to_bag$")
...    btn_choose_size=android=UiSelector().resourceIdMatches(".*id/product_variant_button$")
...    lbl_classification_option=android=UiSelector().resourceIdMatches(".*id/tab_page_indicator$").fromParent(UiSelector().className("android.widget.TextView"))
...    lbl_item_options=android=UiSelector().resourceIdMatches(".*id/item_text$")
...    btn_ok_choose_size_pop_up=android=UiSelector().resourceIdMatches(".*id/dialog_ok_button$")