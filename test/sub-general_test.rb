require File.join(File.dirname(__FILE__), 'test_helper')

class Sub::GeneralTest < Test::Unit::TestCase

  def test_should_return_a_single_word_in_array
    assert_equal %w{Hello}, "Hello".words
  end

  def test_should_return_all_words_as_element_in_array
    assert_equal ["foo-foo", "bar's", "bar"], "foo-foo, bar's. bar!".words
  end
end
