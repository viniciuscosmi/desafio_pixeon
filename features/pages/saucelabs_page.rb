class SaucelabsPage
  
  def initialize(browser)
    @browser = browser
    @solutions = @browser.div(:class => ['_2r81','lltz'])
    @cross_browser_testing = @browser.a(:text => 'Cross Browser Testing')
    @lean_more = @browser.a(:class => '_2rVB')
  end

  def open_cross_browser_testing
    @solutions.wait_until(&:present?).click
    sleep 1
    @cross_browser_testing.click
  end

  def open_automate_selenium_lean_more
    @lean_more.click
  end
end