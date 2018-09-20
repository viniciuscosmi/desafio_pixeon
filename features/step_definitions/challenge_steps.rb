Dado("que acesso o site do saucelabs") do
  @browser.goto('www.saucelabs.com')
end

Quando("acessar mais detalhes do AUTOMATE YOUR SELENIUM TESTS") do
  @page.(SaucelabsPage).open_cross_browser_testing
  @page.(SaucelabsPage).open_automate_selenium_lean_more
end

Então("devo verificar a mensagem {string}") do |message|
  expect(@browser.text).to include(message)
end

Dado("que acesso o site do github") do
  @browser.goto('www.github.com')
end

Quando("pesquisar o repositório por {string}") do |repository|
  @page.(GithubPage).search_repository(repository)
end

E("acessar {string}") do |title|
  @page.(GithubPage).access_repository(title)
end

Então("devo verificar qual arquivo com commit mais antigo") do
  @page.(GithubPage).find_last_commit
  puts @page.(GithubPage).show_old_files
end

Dado("que acesso o site da extentreports") do
  @browser.goto('www.extentreports.com/')
end

Quando("acessar a documentação da versão") do
  @page.(ExtentreportsPage).access_documentation
end

Então("devo verificar se a flag está disponível para a versão PRO") do
  expect(@page.(ExtentreportsPage).validate_offline_report).to include('success')
end