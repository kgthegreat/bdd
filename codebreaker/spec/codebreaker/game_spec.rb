require 'codebreaker/spec_helper'

module Codebreaker
  describe Game do
    let(:output) { double('output').as_null_object }
    let(:game) { Game.new(output) }

    describe "#start" do

      it "sends a welcome message" do
        output.should_receive(:puts).with('Welcome Codebreaker to Codebreaker')
        game.start
      end

      it "prompts for the first guess" do
        output.should_receive(:puts).with('Enter Guess:')
        game.start
      end

    end
  end
end
