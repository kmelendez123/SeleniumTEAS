#filename: config_cloud.rb
require 'sauce_whisk'

ENV['base_url']         ||= 'http://the-internet.herokuapp.com'
ENV['host']             = 'saucelabs'
ENV['operating_system'] ||= 'Windows XP'
ENV['browser']          ||= 'internet_explorer'
ENV['browser_version']  ||= '8'
# Can hard-code credentials here if needbe
ENV['SAUCE_USERNAME']   = 'kmelendez'
ENV['SAUCE_ACCESS_KEY'] = '30a57e97-6069-4bce-97d0-2e788a0420f2'
