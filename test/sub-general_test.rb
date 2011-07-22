require File.join(File.dirname(__FILE__), 'test_helper')

class Sub::GeneralTest < Test::Unit::TestCase

  def setup
    @spaces_and_some_text = "    \n \r   \t\r\n foo \t bar    "
  end

  def test_should_return_a_single_word_in_array
    assert_equal %w{Hello}, "Hello".words
  end

  def test_should_return_all_words_as_element_in_array
    assert_equal ["foo-foo", "bar's", "bar"], "foo-foo, bar's. bar!".words
  end

  def test_should_replace_a_sequence_of_spaces_per_a_unique_space
    string = @spaces_and_some_text.dup
    assert_equal " foo bar ", string.unique_spaces
  end

  def test_should_replace_the_left_spaces_by_only_one
    assert_equal '   \o/!'.unique_spaces, ' \o/!'
  end

  def test_should_replace_the_right_spaces_by_only_one
    assert_equal '\o/!     '.unique_spaces, '\o/! '
  end

  def test_should_keep_the_original_content_after_calling_the_method
    string = @spaces_and_some_text.dup
    string.unique_spaces
    assert_equal string, "    \n \r   \t\r\n foo \t bar    "
  end

  def test_should_return_the_same_content_if_any_space_replaced
    assert_equal "Hello", "Hello".unique_spaces
  end

  def test_should_not_generate_a_new_object
    string = @spaces_and_some_text.dup

    assert_same string, string.unique_spaces!
  end

  def test_should_return_nil_if_nothing_changed
    assert_nil "Hello".unique_spaces!
  end

end
