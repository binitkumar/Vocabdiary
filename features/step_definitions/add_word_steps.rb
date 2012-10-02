Given /^User is at home page$/ do
  visit '/'
end
When  /^User clicks on add word$/ do
  click_link('Add Word')
end
Then /^User fills the word details$/ do
  page.should have_content "Add new word"
  fill_in "word", :with=>'Test'
  fill_in "meaning", :with=>'Nourishing the application integrity'

end
And /^User clicks the submit form$/ do
  click_button "Add"
end
Then /^User should be able to see new word in index$/ do
  page.should have_content 'Test'
  page.should have_content "Nourishing the application integrity"
end