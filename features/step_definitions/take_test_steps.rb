And /^These is less then 4 words$/ do
  Word.delete_all
end
When  /^User clicks on take test$/ do
  click_link 'Take Test'
end
Then /^User should see the message that less number of words available$/ do
  page.should have_content "Less then 4 words in database. Unable to generate test paper"
end
Then /^User creates 4 words$/ do

end

Then /^User should see word and options$/ do

end