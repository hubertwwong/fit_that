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

# a generic visit page.
When(/^I visit the "(.*?)" page for "(.*?)"$/) do |cur_action, cur_controller|
  # pending # express the regexp above with the code you wish you had
  # cur_controller_singular = cur_controller.chomp("s")
  
  if cur_action == "index"
    visit cur_controller
  elsif cur_action == "new"
    visit cur_controller + "/new"
  end
  
  puts "====================="
  #puts arg1
  #visit tasks_path
  puts page.html
end

# checks a page for a list of text elements in the page.
# this just loops thru and checks.
# 
# should name the column name page_text so it can pick it up here.
Then(/^I see a page with these elements$/) do |table|
  result_hash = table.hashes
  result_hash.each do |result_param|
    result = expect(page).to have_content(result_param['page_text'])
    #puts ">>   " + result.to_s
    #puts ">pt  " + result_param['page_text'].to_s
    #puts ">rp  " + result_param.to_s
  end
end