Given(/^I go to the new teller page$/) do
  visit new_teller_path
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button 'Add'
end

Then(/^I should be on the teller list page$/) do
  expect(page).to have_content('Tellers List')
  #page.should have_content('Tellers List')
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content('danie')
  #page.should have_content('danie')
end