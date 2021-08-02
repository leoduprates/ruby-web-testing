require 'json'
require 'active_support/inflector'

class PageHelper
  def self.find_element(arg)
    finder(arg)
  end

  def self.extract_element(arg)
    if arg.include? ':'
      @how, @what = arg.split(':')
    else arg.instance_of? Object
      mapping = get_page_object_mapping(arg)
      @how, @what = mapping[0].split(':')     end

    @what = @what.strip
  end

  def self.load_page_objects
    page_objects_files = Dir['features/page_objects/*'].reject { |file| File.directory? file }
    page_objects = []

    page_objects_files.each do |file|
      page_objects.push(File.read(file))
    end

    page_objects
  end

  def self.get_page_object_mapping(element)
    page_objects = load_page_objects
    element_name = element.titleize.camelize(:lower).delete(' ')
    elements = []

    page_objects.each do |object|
      object = JSON.parse(object)
      elements.push(object[element_name])
    end

    elements
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
    else
      "No Such finders #{arg}"
    end

    element
  end
end
