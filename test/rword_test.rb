require 'test_helper'
require 'rword'

# Rword tests
class RwordTest < Minitest::Test
  def test_for_version_number
    refute_nil ::Rword::VERSION
  end

  def test_that_it_generates_words
    assert !Rword.generate('robin', 3).nil?
  end

  def test_for_english_words_only
    assert Rword::Dictionary.in_dictionary?(Rword.generate('robin', 3)[1])
  end
end
