require 'spec_helper'

RSpec.describe Traduce do
  context "with the active present indicative tense" do
    context "in the first person singular" do
      it "conjugates a regular -ar verb in the first person" do
        conjugation = Traduce.conjugate("hablar", number: 1, tense: :present, person: 1, mood: :indictive, voice: :active)
        expect(conjugation).to eql "hablo"
      end
      it "conjugates a regular -er verb in the first person active singular tense" do
        conjugation = Traduce.conjugate("temer", number: 1, tense: :present, person: 1, mood: :indictive, voice: :active)
        expect(conjugation).to eql "temo"
      end
      it "conjugates a regular -ir verb in the first person active singular tense" do
        conjugation = Traduce.conjugate("partir", number: 1, tense: :present, person: 1, mood: :indictive, voice: :active)
        expect(conjugation).to eql "parto"
      end
    end

    context "in the second person singular" do
      it "conjugates a regular -ar verb in the second person active singular tense" do
        conjugation = Traduce.conjugate("hablar", number: 1, tense: :present, person: 2, mood: :indictive, voice: :active)
        expect(conjugation).to eql "hablas"
      end
      it "conjugates a regular -er verb in the second person active singular tense" do
        conjugation = Traduce.conjugate("temer", number: 1, tense: :present, person: 2, mood: :indictive, voice: :active)
        expect(conjugation).to eql "temes"
      end
      it "conjugates a regular -ir verb in the second person active singular tense" do
        conjugation = Traduce.conjugate("partir", number: 1, tense: :present, person: 2, mood: :indictive, voice: :active)
        expect(conjugation).to eql "partes"
      end
    end

    context "in the third person singular" do
      it "conjugates a regular -ar verb in the second person active singular tense" do
        conjugation = Traduce.conjugate("hablar", person: 3)
        expect(conjugation).to eql "habla"
      end
      it "conjugates a regular -er verb in the second person active singular tense" do
        conjugation = Traduce.conjugate("temer",person: 3)
        expect(conjugation).to eql "teme"
      end
      it "conjugates a regular -ir verb in the second person active singular tense" do
        conjugation = Traduce.conjugate("partir", person: 3)
        expect(conjugation).to eql "parte"
      end
    end
  end

  describe Traduce::Verb do
    it "knows its proper ending" do
      expect(Traduce::Verb.new("hablar").ending).to eql "ar"
    end
    context "when -ar verb" do
      subject { Traduce::Verb.new("hablar") }
      it { is_expected.to be_ar_verb }
      it { is_expected.to_not be_ir_verb }
      it { is_expected.to_not be_er_verb }
    end
    context "when -er verb" do
      subject { Traduce::Verb.new("temer") }
      it { is_expected.to_not be_ar_verb }
      it { is_expected.to_not be_ir_verb }
      it { is_expected.to be_er_verb }
    end
    context "when -ir verb" do
      subject { Traduce::Verb.new("partir") }
      it { is_expected.to_not be_ar_verb }
      it { is_expected.to be_ir_verb }
      it { is_expected.to_not be_er_verb }
    end
  end
end
