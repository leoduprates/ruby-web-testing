Dado(/^que eu acesse a pagina "([^\"]*)"$/) do |url|
  @@page = @browser
  @@page.navigate.to url
end

Quando(/^eu preencho "([^\"]*)" no campo "([^\"]*)"$/) do |value, mapping|
  element = PageHelper.find_element(mapping)
  element.send_keys value
end

Entao(/^o texto "([^\"]*)" deve existir no campo "([^\"]*)"$/) do |expected_text, mapping|
  element = PageHelper.find_element(mapping)
  element.text.include? expected_text
end

Quando(/^eu procuro pelo campo "([^\"]*)"$/) do |mapping|
  element = PageHelper.find_element(mapping)
  element.displayed?
end

Entao(/^eu vejo o texto "([^\"]*)"$/) do |expected_text|
  element = PageHelper.find_element("xpath: //*[contains(., '#{expected_text}')]")
  element.displayed?
end

Quando(/^eu limpo o campo "([^\"]*)"$/) do |mapping|
  element = PageHelper.find_element(mapping)
  element.clear
end

Quando(/^eu clico no botão "([^\"]*)"$/) do |mapping|
  element = PageHelper.find_element(mapping)
  element.click
end

Quando(/^eu envio o formulario "([^\"]*)"$/) do |mapping|
  element = PageHelper.find_element(mapping)
  element.submit
end

Quando(/^eu seleciono "([^\"]*)" no check box$/) do |mapping|
  element = PageHelper.find_element(mapping)
  element.click
end

Quando(/^eu seleciono a opção número (.*) do combobox "([^\"]*)"$/) do |index, mapping|
  element = PageHelper.find_element(mapping)
  combobox = Selenium::WebDriver::Support::Select.new(element)
  combobox.select_by(:index, index)
end

Quando(/^eu seleciono a opção com "([^"]*)?" no combobox "([^\"]*)"$/) do |text, mapping|
  element = PageHelper.find_element(mapping)
  combobox = Selenium::WebDriver::Support::Select.new(element)
  combobox.select_by(:text, text)
end

Quando(/^eu deleto os cookies$/) do
  @@page.manage.delete_all_cookies
end

Quando(/^eu espero por (.*) segundos$/) do |seconds|
  sleep(seconds.to_i)
end

Entao(/^eu espero que o título da pagina seja "([^"]*)?"$/) do |expected_text|
  @@page.title.include? expected_text
end

Entao(/^eu espero que o elemento "([^"]*)" esteja visível$/) do |mapping|
  @wait.until do
    from = PageHelper.find_element(mapping)
    from.displayed?
  end
end

Entao(/^eu tiro um screenshot$/) do
  random = rand(100000)
  @@page.save_screenshot('reports/evidences/evidence' + random.to_s + '.png')
end
