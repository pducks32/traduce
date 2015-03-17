require 'delegate'

module Traduce
  class Verb < SimpleDelegator

    def initialize(verb)
      super
      @verb = verb
    end

    def er?
      ending == "er"
    end
    alias_method :er_verb?, :er?

    def ar?
      ending == "ar"
    end
    alias_method :ar_verb?, :ar?

    def ir?
      ending == "ir"
    end
    alias_method :ir_verb?, :ir?

    def ending
      @verb[-2, 2]
    end

    def suffix_letter
      ending.chomp("r")
    end

    def stem
      @verb.chomp ending
    end
  end
end
