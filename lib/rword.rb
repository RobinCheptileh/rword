require 'rword/version'
require 'rword/dictionary'

# Generate possible english words from a set of letters and a specified limit
module Rword
  def self.generate(letters, limit, english_words_only = true)
    words = []
    Dictionary.permutation_count(letters, limit).times do |i|
      word = Dictionary.permute(letters, limit, i, english_words_only)
      next if word.nil?
      words << word unless words.include?(word)
    end
    words
  end
end
