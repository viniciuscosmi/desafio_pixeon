#language: pt

@desafios
Funcionalidade: Validar os sites

@desafio1
Cenário: Validar mensagem no site Saucelabs
  Dado que acesso o site do saucelabs
  Quando acessar mais detalhes do AUTOMATE YOUR SELENIUM TESTS
  Então devo verificar a mensagem 'Run Selenium tests securely in the cloud'

@desafio2
Cenário: Validar mensagem no site Github
  Dado que acesso o site do github
  Quando pesquisar o repositório por 'selenium'
  E acessar 'SeleniumHQ/selenium'
  Então devo verificar qual arquivo com commit mais antigo

@desafio3
Cenário: Validar flag no site Extentreports
  Dado que acesso o site da extentreports
  Quando acessar a documentação da versão
  Então devo verificar se a flag está disponível para a versão PRO