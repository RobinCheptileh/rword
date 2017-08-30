require "rword/version"
require 'rword/dictionary'

module Rword
  # Your code goes here...
  class Worder
    def self.generate(letters, limit, english_words_only = true)
      words = []
      Dictionary.permutation_count(letters, limit).times do |i|
        word = Dictionary.permute(letters, limit, i, english_words_only)
        next if word.nil?
        unless words.include?(word)
          words << word
        end
      end
      words
    end
  end
end
