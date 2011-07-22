require "sub-general/version"

module Sub
  module General
    WORD_PATTERN      = /\w[\w\'\-]*/
    ANY_SPACE_PATTERN = /\s+/

    UNIQUE_SPACE = " "

    def words
      self.scan(WORD_PATTERN)
    end

    def unique_spaces
      self.gsub(ANY_SPACE_PATTERN, UNIQUE_SPACE)
    end

    def unique_spaces!
      self.gsub!(ANY_SPACE_PATTERN, UNIQUE_SPACE)
    end
  end
end

class String
  include Sub::General
end
