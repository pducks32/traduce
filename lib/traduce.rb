require "traduce/version"
require "traduce/verb"
require "traduce/conjugation"

module Traduce
  def self.conjugate(verb, **conjugation_options)
    verb = Verb.new(verb) unless verb.is_a? Verb
    Conjugation.new(**conjugation_options).conjugate(verb)
  end
end
