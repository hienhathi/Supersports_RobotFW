*** Variables ***
&{loginPageLocator}
...    btn_login_start=android=UiSelector().resourceIdMatches(".*id/login_button$")
...    txt_email_start=android=UiSelector().resourceIdMatches(".*id/editTextFloatLabelTextForm$")
...    txt_password_start=android=UiSelector().resourceIdMatches(".*id/editTextPasswordForm$")
...    btn_skip=android=UiSelector().resourceIdMatches(".*id/skip_button$")
...    btn_logout=android=UiSelector().resourceIdMatches(".*id/logout$")
...    txt_email=xpath=//android.widget.LinearLayout[@resource-id="th.co.supersports:id/textInputLayoutTextForm"]/android.widget.FrameLayout/android.widget.EditText
...    txt_password=xpath=//android.widget.LinearLayout[@resource-id="th.co.supersports:id/textInputLayoutPasswordForm"]/android.widget.FrameLayout/android.widget.EditText
...    btn_login=android=UiSelector().resourceIdMatches(".*id/buttonLogin$")
