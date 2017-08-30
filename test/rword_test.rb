require "test_helper"
require 'rword'

class RwordTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Rword::VERSION
  end

  def test_that_it_generates_words
    assert !Rword::Worder.generate('robin', 3).nil?
  end

  def test_that_it_generates_english_words_only
    assert Rword::Dictionary.in_dictionary?(Rword::Worder.generate('robin', 3)[1])
  end
end
