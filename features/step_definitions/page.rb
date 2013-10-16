Given(/^"(.*?)" is logged in$/) do |arg1|
  email = "foo@foo.com"
  pass = "foofoofoo"
  
  visit new_user_registration_path
  
  #puts page.html
  #save_and_open_page
  
  fill_in "user_email", :with => email
  fill_in "user_password", :with => pass
  fill_in "user_password_confirmation", :with => pass
  click_button "Sign up"
  @current_user = User.find_by_email(email)
end

When(/^I visit "(.*?)"$/) do |arg1|
  #pending # express the regexp above with the code you wish you had
  visit arg1
end

Then(/^I see a page with these elements$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end