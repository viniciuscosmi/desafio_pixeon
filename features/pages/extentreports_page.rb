class ExtentreportsPage

  def initialize(browser)
    @browser = browser
    @documentation = @browser.a(:text => 'Documentation')
    @version_three = @browser.a(:text => 'Version 3')
    @java = @browser.a(:text => 'Java')
    @dot_net = @browser.a(:text => '.NET')
    @offline_report = @browser.a(:text => 'Offline report')
  end

  def access_documentation
    @documentation.wait_until(&:present?).hover
    @version_three.wait_until(&:present?).hover
    [@java, @dot_net].sample.wait_until(&:present?).click
  end

  def validate_offline_report
    @offline_report.parent.parent.tds.last.child.class_name
  end

end