source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# MY STUFF
##############################################################################
# some RVM installs don't have have readline support.
# so install it just in case.
gem 'rb-readline'

# if you need mysql support
gem 'mysql2'

# authemtication
gem 'devise'

# static files support
gem 'high_voltage'

# ubuntu / linux stuff.
gem 'therubyracer'
gem 'execjs'

# for testing.
group :test, :developoment do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'cucumber-rails', require: false
  # replacement for YAML files for test.  
  gem 'factory_girl_rails', require: false
  # cleans the db after ever test.
  gem 'database_cleaner'
  
  # automation run when rspec changes.
  gem 'guard-rspec'
  # launch browser with the line save_and_launch
  gem 'launchy'
  
  # this might be broken. for 2.0
  # gem 'debugger'
  # use byebug for ruby 2.0
  gem 'byebug'
end

# for user authentication
gem 'bcrypt-ruby'

# stuff to run after
#
# NOTES
# ===============================================================
#
# >> require: false
# this is needed for gems that are loaded elsewhere.
# usually in the spec helper file.
# basically you are loading it there instead of here.
# 
# this explains the issue.
# http://stackoverflow.com/questions/9300231/factory-already-registered-user-factorygirlduplicatedefinitionerror 
#
#
#
# RSPEC
# ===============================================================
#
# >> run
# rails generate rspec:install
#
# >> load this into config/application.rb
# for spec generators. 
#
# rspec generator
# config.generators do |g|
#   g.test_framework :rspec
# end
#
#
#
# CAPYBARA
# ===============================================================
#
# load this into spec_helper.rb for spec to use with rspec.
# require 'capybara/rspec'
# 
# 
#
# CUCUMBER
# ===============================================================
#
# >> install
# rails g cucumber:install
#
#
# 
# FACTORY GIRL
# ===============================================================
#
# >> load this into spec_helper.rb
#
# require 'factory_girl_rails'
#
# >> load this into spec_helper.rb - part 2.
#
# Factory girl config for RSpec
# RSpec.configure do |config|
#  config.include FactoryGirl::Syntax::Methods
# end
#
# >> getting started page
# https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
#
#
# 
# GUARD
# ===============================================================
# 
# >> install
# bundle exec guard init rspec
# 
# >> notes
# there might be an issue of guard needing .5.0 and above for
# ruby 2.0
#
#
# 
# DATABASE CLEANER
# ===============================================================
#
# >> url
# https://github.com/bmabey/database_cleaner
#
# note:
# you don't need to do most of this if you install cucumber.
#
# >> load the lib in the spec_helper
# require 'database_cleaner'
# 
# >> set the database clean strategy
# note that you only need to add this in if you are not using cucumber rails. 
# that gem adds it to you.
#
# database cleaner strategy. default one on the page
# config.before(:suite) do
#   DatabaseCleaner.strategy = :transaction
#   DatabaseCleaner.clean_with(:truncation)
# end
#
# config.before(:each) do
#   DatabaseCleaner.start
# end
#
# config.after(:each) do
#   DatabaseCleaner.clean
# end
#
#
#
# HIGH VOLTAGE
# ============================================================================
#
# >> url
# https://github.com/thoughtbot/high_voltage
# 
# throw static files in views/pages/your_page.rb
#
#
#
# DEVISE
# ============================================================================
#
# >> url
#
# >> install
# rails g devise:install
# rails g devise:view
#
#
# >> change root. (config/routes.rb)
#
# you see this in devise when you run the devise install. not sure why. 
#
# # ROOT
# # need to set it for devise.
# root :to => 'home#index'
#
# 
# >> set up action mailer (config/environments/development.rb) 
# 
# # DEVISE
# config.action_mailer.default_url_options { :host => 'localhost:3000' }
# 
#
# >> flash messages (app/views/layouts/application.html.erb)
#
# odd that it doesn't add it. when you do the install.
#
# <!-- devise -->
# <p class="notice"><%= notice %></p>
# <p class="alert"><%= alert %></p>
#
#
# >> heroku. 3.2 (config/application.rb)
# 
# baiscally turns off precompile and does not allow access to models.
# heroku might have some other other stuff that you need to do.
# 
# # heroku.
# config.assets.initalize_on_precompile = false
# 
#
# >> create a user
# 
# rails g devise User 
#