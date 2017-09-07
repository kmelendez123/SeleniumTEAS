# SeleniumTEAS

Web Automation Testing and CI server integration used for TEAS Application.
  * Notable use of Selenium, Parallel tests, Rspec, and Rake.

## Dependencies
* A recent version (e.g. 2.2.2) of Ruby (which includes [RubyGems](http://guides.rubygems.org/rubygems-basics/))
* The application runs automated web scraping via multiple browsers (Required for local testing)
  * [Chrome](https://www.google.com/chrome/browser/desktop/index.html)
  * [Firefox](https://www.mozilla.org/en-US/firefox/new/)
* [SauceLabs Account](https://saucelabs.com/) : Sign up for free trial

## Installation
*Windows Users should perform the following steps using the Git Shell*
1. [Bundler](http://bundler.io/) via `gem install bundler`
2. `bundle install` to install ruby dependencies and sinatra/byebug
3. within the `config/cloud.rb`, set your ENV variables using your SauceLab account info or alternatively declare them at runtime

## Running the app
* Clone repository onto local machine
* cd into the root folder in the directory
* `rake -T` to list tasks
* Full list of browser/OS combinations supported by SauceLabs [here](https://saucelabs.com/platforms)
* After a moment, app should process request and either run locally or push to SauceLabs Dashboard
  ## Options
  * Add `tag=shallow` or `tag=deep` to rake command for running tagged tests -i.e `tag=deep rake local:chrome`
  * Add `ci=on` to rake command which consumes .rspec file used to create xml report for CI server use.   
