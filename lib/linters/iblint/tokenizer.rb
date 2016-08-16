module Linters
  module IBlint
    class Tokenizer
      VIOLATION_REGEX = /\A.+:
        (?<line_number>\d+):
        (?<column_number>\d+)\s+
        (?<violation_level>\w+):\s+
        (?<message>.+)
        \n?
      \z/x

      def parse(text)
        Linters::Tokenizer.new(text, VIOLATION_REGEX).parse
      end
    end
  end
end
