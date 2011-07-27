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
    def words
      self.scan(WORD_PATTERN)
    end

    # Removes a sequence of any kind of space characters per a unique whitespace.
    #   # Ex:
    #   "       \n    abc    ".unique_spaces
    #   # >> " abc "
    #
    #   "\o/   \n\r\t     ".unique_spaces
    #   # >> "\o/ "
    # ===Tip:
    # If do you need remove trailing whitespaces. chain the String#strip method:
    #   "       \n    abc    ".unique_spaces.strip
    #   # >> "abc"
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


