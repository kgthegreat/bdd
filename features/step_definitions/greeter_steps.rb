Given /^a greeter$/ do
  @greeter = CucumberGreeter.new
end

When /^I send the greet\(\) message$/ do
  @message = @greeter.greet
end

Then /^I should say "([^\"]*)"$/ do |greeting|
  @message.should == "greeting"
end
