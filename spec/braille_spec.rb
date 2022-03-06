require 'rspec'
require 'simplecov'
SimpleCov.start
require './lib/braille'
require './lib/braille_hash'

RSpec.describe Braille do
  describe "#translate" do
    it "turns a string of characters into an array of braille characters" do
      incoming_text = "aa"
      outgoing_text = subject.translate(incoming_text)
      outgoing_array = [
        [
          ["0", "."],
          [".", "."],
          [".", "."],
        ],
        [
          ["0", "."],
          [".", "."],
          [".", "."],
        ]
      ]
      expect(outgoing_text).to eq(outgoing_array)
    end
  end
end
