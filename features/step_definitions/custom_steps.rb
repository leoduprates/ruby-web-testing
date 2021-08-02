Given(/^I am on Demo Web App$/) do
  @@page = @browser
  url = File.join('file:/', Dir.pwd, '/resources/demo_app/index.html')

  @@page.navigate.to url
end
