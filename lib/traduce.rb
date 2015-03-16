require "traduce/version"
require 'delegate'

module Traduce
  def self.conjugate(verb, person:, number: 1, tense: :present, mood: :indictive, voice: :active)
    verb = Verb.new(verb) unless verb.is_a? Verb
    verb.gsub(/([e|a|i])r\Z/) do |m|
      ending = verb.ar? ? "a" : "e"
      suffix = person.eql?(3) ? "#{ending}" : "#{ending}s"
      person.eql?(1) ? "o" : suffix
    end
  end

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
  end
end
