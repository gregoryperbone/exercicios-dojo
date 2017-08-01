require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'

#Configurando o driver Capybara
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#setando a configuração do driver como padrão
Capybara.default_driver = :selenium

#timeout padrão da execução
Capybara.default_max_wait_time = 15

#maximizar a tela ao inicio do teste
Capybara.page.driver.browser.manage.window.maximize

