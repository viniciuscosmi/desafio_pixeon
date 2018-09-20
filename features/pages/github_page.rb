class GithubPage
  
  def initialize(browser)
    @browser = browser
    @search = @browser.text_field(:name => 'q')
    @commits = @browser.li(:class => 'commits')
    @older = @browser.a(:text => 'Older')
    @initial_commit = @browser.as(:title => /Initial/)
    @browse_files = @browser.a(:title => 'Browse the repository at this point in the history')
    @old_commit = @browser.div(:class => 'no-wrap')
    @old_files = @browser.div(:class => 'file-wrap')
  end

  def search_repository(repository)
    @search.wait_until(&:present?).set(repository)
    @browser.send_keys :enter
  end

  def access_repository(repository)
    @browser.link(:text => repository).click
  end

  def find_last_commit
    @quantity_commits = @commits.text.gsub(',','').split(' commits')[0].to_i - 34
    @commits.wait_until(&:present?).click
    @older.wait_until(&:present?).click
    @browser.goto(@browser.url.gsub("+34", "+#{@quantity_commits}"))
    @initial_commit.last.wait_until(&:present?).click
    @browse_files.wait_until(&:present?).click
  end

  def show_old_files
    @old_files.text
  end
end