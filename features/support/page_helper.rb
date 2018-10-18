class PageHelper
  def self.find_element(arg)
    element = finder(arg)
    element
  end

  def self.finder(arg)
    extract_element(arg)

    case @how
    when 'class'
      element = @@page.find_element(class: @what)
    when 'class_name'
      element = @@page.find_element(class_name: @what)
    when 'css'
      element = @@page.find_element(css: @what)
    when 'id'
      element = @@page.find_element(id: @what)
    when 'link'
      element = @@page.find_element(link: @what)
    when 'link_text'
      element = @@page.find_element(link_text: @what)
    when 'name'
      element = @@page.find_element(name: @what)
    when 'partial_link_text'
      element = @@page.find_element(partial_link_text: @what)
    when 'tag_name'
      element = @@page.find_element(tag_name: @what)
    when 'xpath'
      element = @@page.find_element(xpath: @what)
    when 'variable'
      mapping = WoopPage.send(@what)
      element = @@page.find_element(mapping)
    else
      "No Such finders #{x}"
    end

    element
  end

  def self.extract_element(arg)
    if arg.include? ':'
      @how, @what = arg.split(':')
      @what = @what.strip
    else arg.instance_of? Object
      @how = 'variable'
      @what = arg
    end
  end

  def self.get_pages_baseline()
    driver.find_elements(:tag_name, "a").each { |link|
      link.click
      driver.save_screenshot('/reports/baseline/baseline' + Time.now.to_s + '.png')
    }
  end
end
