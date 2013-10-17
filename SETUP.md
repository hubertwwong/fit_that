# Setup info about this project.

Mostly about gem and configuration setup notes that isn't specific to the project.

=================================================================

## About gem setup

if you see this the require false flag for gems.

"require: false"

this is needed for gems that are loaded elsewhere.
usually in the spec helper file.
basically you are loading it there instead of here.

this explains the issue.
http://stackoverflow.com/questions/9300231/factory-already-registered-user-factorygirlduplicatedefinitionerror 




=================================================================

### RSPEC

#### run
rails generate rspec:install

#### load this into config/application.rb
for spec generators. 
copy the below

```
# rspec generator
config.generators do |g|
  g.test_framework :rspec
end
```



=================================================================

### CAPYBARA

#### load this into spec_helper.rb for spec to use with rspec.

```
require 'capybara/rspec'
``` 
 



=================================================================

### CUCUMBER

#### install
rails g cucumber:install

#### loading seed db. add this to (features/support/env.rb)

keep in mind that you might need to add this again when you upgrade cucumber.

```
# load seed data
require_relative '../../db/seeds'
```




=================================================================
 
### FACTORY GIRL

#### load this into spec_helper.rb

```
require 'factory_girl_rails'
```

#### load this into spec_helper.rb - part 2.

```
# Factory girl config for RSpec
RSpec.configure do |config|
 config.include FactoryGirl::Syntax::Methods
end
```

#### getting started page

https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md




=================================================================
 
### GUARD

#### install

```
bundle exec guard init rspec
```
 
#### notes

there might be an issue of guard needing .5.0 and above for
ruby 2.0




=================================================================
 
### DATABASE CLEANER

#### url

https://github.com/bmabey/database_cleaner

note:
you don't need to do most of this if you install cucumber.



#### load the lib in the spec_helper

```
require 'database_cleaner'
```

 
#### set the database clean strategy

note that you only need to add this in if you are not using cucumber rails. 
that gem adds it to you.

```
# database cleaner strategy. default one on the page
config.before(:suite) do
  DatabaseCleaner.strategy = :transaction
  DatabaseCleaner.clean_with(:truncation)
end

config.before(:each) do
  DatabaseCleaner.start
end

config.after(:each) do
  DatabaseCleaner.clean
end
```


==============================================================================

### HIGH VOLTAGE

#### url
https://github.com/thoughtbot/high_voltage

throw static files in views/pages/your_page.rb




==============================================================================

### DEVISE

#### url

#### install

```
rails g devise:install
rails g devise:view
```

#### change root. (config/routes.rb)

you see this in devise when you run the devise install. not sure why. 

```
# ROOT
# need to set it for devise.
# change it from home#index to whatever controller and action you want too send it to.
root :to => 'home#index'
```
 
 
#### set up action mailer (config/environments/development.rb) 

``` 
# DEVISE
config.action_mailer.default_url_options { :host => 'localhost:3000' }
``` 

#### flash messages (app/views/layouts/application.html.erb)

odd that it doesn't add it. when you do the install.

```
<!-- devise -->
<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>
```


#### heroku. 3.2 (config/application.rb)
 
baiscally turns off precompile and does not allow access to models.
heroku might have some other other stuff that you need to do.

``` 
# heroku.
config.assets.initalize_on_precompile = false
```

#### create a user

```
rails g devise User 
```