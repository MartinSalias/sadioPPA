When(/^Entro al sitio$/) do
  visit '/'
end

Then(/^Veo "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end
