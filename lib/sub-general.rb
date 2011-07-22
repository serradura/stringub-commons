require "sub-general/version"

module Sub
  module General
    WORD_PATTERN      = /\w[\w\'\-]*/

    def words
      self.scan(WORD_PATTERN)
    end
  end
end

class String
  include Sub::General
end
