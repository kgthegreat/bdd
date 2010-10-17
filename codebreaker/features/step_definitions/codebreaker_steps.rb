class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end

  def output
    @output ||= Output.new
  end
end

output = Output.new

Given /^I am not playing yet$/ do
end

When /^I start a new game$/ do
  game = Codebreaker::Game.new(output)
  game.start
end


Then /^I should see "([^\"]*)"$/ do |message|
  output.messages.should include(message)
end


