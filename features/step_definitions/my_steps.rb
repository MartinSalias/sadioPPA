Given(/^Entro al juego$/) do
  visit '/'
end

Then(/^Veo "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

Given(/^La palabra secreta es "(.*?)"$/) do |palabra|
#  pending # express the regexp above with the code you wish you had
end

When(/^Pruebo con "(.*?)"$/) do |letra|
  fill_in("letra", :with => letra)
  click_button("Intentar")
end
