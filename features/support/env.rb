require 'watir'
require 'pry'
require 'byebug'
require 'rspec'

browser = Watir::Browser.new

page = lambda{|b, klass| klass.new b}.curry.(browser)
browser.driver.manage.window.maximize
Before do
  @page = page
  @browser = browser
end