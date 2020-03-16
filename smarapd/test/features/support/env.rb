require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'report_builder'
require 'pry'
require_relative './helpers/page_helper.rb'
require_relative 'helper.rb'

AMBIENTE = ENV['AMBIENTE']

#carregar o ambiente de homolog, carregar o arquivo yml com diretorio padrao + arquivo que eu quero
#(__FILE__)É uma referência ao nome do arquivo atual. No arquivo env.rb, __FILE__seria interpretado como "env.rb".
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/environments/#{AMBIENTE}.yml")

World(Pages)
World(Helper)


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 15
end

# binding.pry