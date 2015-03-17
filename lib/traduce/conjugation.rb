module Traduce
  class Conjugation

    attr_accessor :person, :plural, :tense, :mood, :voice

    def initialize(person: nil, number: 1, plural: (number > 1), tense: :present, mood: :indictive, voice: :active)
      @person, @plural, @tense, @mood, @voice = person, plural, tense, mood, voice
    end

    def conjugate(verb)
      if plural?
        return verb.stem + plural_ending(verb)
      end
      verb.gsub(/([e|a|i])r\Z/) do |m|
        ending = verb.ar? ? "a" : "e"
        suffix = person.eql?(3) ? "#{ending}" : "#{ending}s"
        person.eql?(1) ? "o" : suffix
      end
    end
    alias_method :call, :conjugate

    def plural?
      !!plural
    end

    private

    def plural_ending(verb)
      case person
      when 1 then nosotros_ending(verb)
      when 2 then vosotros_ending(verb)
      when 3 then ellos_ending(verb)
      end
    end

    def nosotros_ending(verb)
      verb.suffix_letter + "mos"
    end

    def ellos_ending(verb)
      suffix_letter = verb.ar? ? "a" : "e"
      suffix_letter + "n"
    end

    def vosotros_ending(verb)
      case verb.suffix_letter
      when "a" then "áis"
      when "e" then "éis"
      when "i" then "ís"
      end
    end
  end
end
