*** Variables ***
&{productListPageLocator}
...    firt_product_locator=xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]
...    txt_products_name=android=UiSelector().resourceIdMatches(".*id/item_name$")
...    btn_sort=android=UiSelector().resourceIdMatches(".*id/sorter_button$")
...    btn_filter=android=UiSelector().resourceIdMatches(".*id/filter_button_label$")