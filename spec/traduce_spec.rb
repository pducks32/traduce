require 'spec_helper'

RSpec.describe Traduce do
  it "conjugates a verb" do
    conjugation = Traduce.conjugate("hablar", person: 1)
    expect(conjugation).to eql "hablo"
  end
end
