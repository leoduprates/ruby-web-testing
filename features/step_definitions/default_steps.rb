Given(/^I am on "([^"]*)"$/) do |url|
  @@page = @browser
  @@page.navigate.to url
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |value, mapping|
  element = PageHelper.find_element(mapping)
  element.send_keys value
end

Then(/^I should see the text "([^"]*)" on "([^"]*)"$/) do |expected_text, mapping|
  element = PageHelper.find_element(mapping)
  element.text.include? expected_text
end

When(/^I should see the element "([^"]*)"$/) do |mapping|
  element = PageHelper.find_element(mapping)
  element.displayed?
end

Then(/^I should see the text "([^"]*)"$/) do |expected_text|
  element = PageHelper.find_element("xpath: //*[contains(., '#{expected_text}')]")
  element.displayed?
end

When(/^I clean "([^"]*)"$/) do |mapping|
  element = PageHelper.find_element(mapping)
  element.clear
end

When(/^I click on "([^"]*)"$/) do |mapping|
  element = PageHelper.find_element(mapping)
  element.click
end

When(/^I submit the form "([^"]*)"$/) do |mapping|
  element = PageHelper.find_element(mapping)
  element.submit
end

When(/^I click "([^"]*)" on the checkbox$/) do |mapping|
  element = PageHelper.find_element(mapping)
  element.click
end

When(/^I select the option number (.*) in the combobox "([^"]*)"$/) do |index, mapping|
  element = PageHelper.find_element(mapping)
  combobox = Selenium::WebDriver::Support::Select.new(element)
  combobox.select_by(:index, index)
end

When(/^I select the option "([^"]*)" in the combobox "([^"]*)"$/) do |text, mapping|
  element = PageHelper.find_element(mapping)
  combobox = Selenium::WebDriver::Support::Select.new(element)
  combobox.select_by(:text, text)
end

When(/^I delete cookies$/) do
  @@page.manage.delete_all_cookies
end

When(/^I wait for (.*) seconds$/) do |seconds|
  sleep(seconds.to_i)
end

Then(/^I should see the title page "([^"]*)?"$/) do |expected_text|
  @@page.title.include? expected_text
end

Then(/^I should see "([^"]*)" visible$/) do |mapping|
  @wait.until do
    from = PageHelper.find_element(mapping)
    from.displayed?
  end
end

Then(/^I take the screenshot$/) do
  path = 'reports/screenshots/screenshot_'
  random = rand(10_000_00)
  file_format = '.png'
  path = format('%<path>s%<id>s%<format>s', path: path, id: random.to_s, format: file_format)
  @@page.save_screenshot(path)
end
