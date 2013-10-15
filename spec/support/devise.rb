# test helpers to make it simple to create and log in a default user.
RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
end