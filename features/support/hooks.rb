require 'report_builder'

case ENV['BROWSER']
when 'ie'
  browser = Selenium::WebDriver.for :ie
when 'firefox'
  browser = Selenium::WebDriver.for :firefox
when 'chrome'
  browser = Selenium::WebDriver.for :chrome
when 'opera'
  browser = Selenium::WebDriver.for :opera
when 'chrome_headless'
  options = Selenium::WebDriver::Chrome::Options.new(args: ['headless'])
  browser = Selenium::WebDriver.for(:chrome, options: options)
when 'firefox_headless'
  options = Selenium::WebDriver::Firefox::Options.new(args: ['-headless'])
  browser = Selenium::WebDriver.for(:firefox, options: options)
when 'nexus_5'
  mobile_emulation = { 'deviceName' => 'iPad Pro' }
  caps = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'mobileEmulation' => mobile_emulation })
  browser = Selenium::WebDriver.for(:chrome, desired_capabilities: caps)
else
  browser = Selenium::WebDriver.for :chrome
end

Before do
  @browser = browser
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)
  # @url = url
end

After do |scenario|
  if scenario.failed?
    encoded_img = @browser.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}", 'image/png')
  end
end

at_exit do
  browser.close
  ReportBuilder.configure do |config|
    config.input_path = 'reports/cucumber_json/report.json'
    config.report_path = 'reports/report'
    config.report_title = 'Example Selenium Web'
    config.include_images = true
  end
  ReportBuilder.build_report
end
