require "linters/iblint/tokenizer"

module Linters
  module IBlint
    class Options
      def command(filename)
        path = File.join(File.dirname(__FILE__), "../../..")
        cmd = "node /node_modules/iblint/index.js #{filename}"
        File.join(path, cmd)
      end

      def tokenizer
        Tokenizer.new
      end
    end
  end
end
