require 'watir'
require 'selenium-webdriver'

1000.times do |i|

  browser = Watir::Browser.new :chrome
  browser.goto 'http://cleant.it/pages/copy_air_hoodie'

  browser.element({css: "a[data-variant-name='XXL']"}).click

  Watir::Wait.until { browser.div({text: "+1 w koszyku"}).present? }

  browser.button(class: ["checkout", "data-href-get"]).click!


  browser.button(class: ["the_ultimate_button", "the_ultimate_button_buy-2", "js-baz-check-carts"]).click


  browser.text_field(id: "billing_first_name").set "a#{i}"
  browser.text_field(id: "billing_last_name").set 'netkodo'
  browser.text_field(id: "billing_address").set 'Grudziądzka'
  browser.text_field(id: "billing_house_number").set '132'
  browser.text_field(id: "billing_city").set 'Toruń'
  browser.text_field(id: "billing_zip").set '87-100'
  browser.text_field(id: "email").set 'test@netkodo.com'
  browser.text_field(id: "billing_phone").set '605426360'

  browser.button(id: "add_info_to_order").click


  browser.button(class: ["the_ultimate_button_S" ,"shipping_method_next"]).click


  browser.radio(class: "check_payment_radio").click
  browser.button(class: ["the_ultimate_button_S", "shipping_method_next"]).click

  browser.checkbox(id: "assent_personal_data").click
  browser.checkbox(id: "assent_newsletter").click
  browser.button(class: "js-baz-buy-order ").click

  browser.button(class: ["btn", "btn-default"]).click

  browser.close

end