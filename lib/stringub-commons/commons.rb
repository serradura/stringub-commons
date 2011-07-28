# Stringub::Commons provides new methods for strings.
module Stringub
  module Commons
    # Regexp pattern used to define words.
    WORD_PATTERN      = /\w[\w\'\-]*/
    # Regexp pattern used to match any kind of space, ex: ' ', \n, \r, \t
    ANY_SPACE_PATTERN = /\s+/

    UNIQUE_SPACE = " "

    # Split strings into an array of words.
    #   # Ex:
    #   "Ruby on Rails".words
    #   # >> ["Ruby", "on", "Rails"]
    #
    #   "Serradura's house".words
    #   # >> ["Serradura's", "house"]
    #
    #   "Module and sub-module".words
    #   # >> ["Module", "and",  "aub-module"]
    #
    # If you question yourself:
    # Whats the difference between the standard method String#split and words method?
    #
    #   "a, b, c, d-e,@ f'g.**".split
    #   # >> ["a,", "b,", "c,", "d-e,@", "f'g.**"]
    #
    #   "a, b, c, d-e,@ f'g.**".words
    #   # >> ["a", "b", "c", "d-e", "f'g"]
    #
    # The answer is:
    # the words method just take words!
    def words
      self.scan(WORD_PATTERN)
    end

    # Removes a sequence of any kind of space characters per a unique whitespace.
    #   # Ex:
    #   "       \n    abc   \n\n\r\t def \n\r  ghi \n".unique_spaces
    #   # >> " abc def ghi "
    #
    # ===Tip:
    # If do you need remove trailing whitespaces. chain the String#strip method:
    #
    #   "       \n    abc   \n\n\r\t def \n\r  ghi \n".unique_spaces.strip
    #   # >> "abc def ghi"
    def unique_spaces
      self.gsub(ANY_SPACE_PATTERN, UNIQUE_SPACE)
    end

    # Removes a sequence of any kind of space characters per a unique whitespace.
    # Returns nil if str was not altered.
    def unique_spaces!
      self.gsub!(ANY_SPACE_PATTERN, UNIQUE_SPACE)
    end
  end
end


