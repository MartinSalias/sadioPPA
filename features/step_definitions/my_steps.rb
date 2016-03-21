Given(/^Entro al juego$/) do
  visit '/'
end

Then(/^Veo "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end
