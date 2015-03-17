require "spec_helper"

describe Traduce::Conjugation do
  describe "knows about itself" do
    it { is_expected.to_not be_plural }
  end

  context "with the active present indicative tense" do

    let!(:parent_conjugation) {
      Traduce::Conjugation.new(voice: :active, tense: :present, mood: :indicative)
    }

    context "in the first person singular" do
      let!(:conjugation) {
        parent_conjugation.dup.tap do |c|
          c.person = 1
        end
      }
      it "conjugates a regular -ar" do
        result = conjugation.conjugate Traduce::Verb.new("hablar")
        expect(result).to eql "hablo"
      end
      it "conjugates a regular -er" do
        result = conjugation.conjugate Traduce::Verb.new("temer")
        expect(result).to eql "temo"
      end
      it "conjugates a regular -ir" do
        result = conjugation.conjugate Traduce::Verb.new("partir")
        expect(result).to eql "parto"
      end
    end

    context "in the second person singular" do
      let!(:conjugation) {
        parent_conjugation.dup.tap do |c|
          c.person = 2
        end
      }
      it "conjugates a regular -ar" do
        result = conjugation.conjugate Traduce::Verb.new("hablar")
        expect(result).to eql "hablas"
      end
      it "conjugates a regular -er" do
        result = conjugation.conjugate Traduce::Verb.new("temer")
        expect(result).to eql "temes"
      end
      it "conjugates a regular -ir" do
        result = conjugation.conjugate Traduce::Verb.new("partir")
        expect(result).to eql "partes"
      end
    end

    context "in the third person singular" do
      let!(:conjugation) {
        parent_conjugation.dup.tap do |c|
          c.person = 3
        end
      }
      it "conjugates a regular -ar" do
        result = conjugation.conjugate Traduce::Verb.new("hablar")
        expect(result).to eql "habla"
      end
      it "conjugates a regular -er" do
        result = conjugation.conjugate Traduce::Verb.new("temer")
        expect(result).to eql "teme"
      end
      it "conjugates a regular -ir" do
        result = conjugation.conjugate Traduce::Verb.new("partir")
        expect(result).to eql "parte"
      end
    end

    context "in the third person singular" do
      let!(:conjugation) {
        parent_conjugation.dup.tap do |c|
          c.person = 1
          c.plural = true
        end
      }
      it "conjugates a regular -ar" do
        result = conjugation.conjugate Traduce::Verb.new("hablar")
        expect(result).to eql "hablamos"
      end
      it "conjugates a regular -er" do
        result = conjugation.conjugate Traduce::Verb.new("temer")
        expect(result).to eql "tememos"
      end
      it "conjugates a regular -ir" do
        result = conjugation.conjugate Traduce::Verb.new("partir")
        expect(result).to eql "partimos"
      end
    end

    context "in the third person singular" do
      let!(:conjugation) {
        parent_conjugation.dup.tap do |c|
          c.person = 2
          c.plural = true
        end
      }
      it "conjugates a regular -ar" do
        result = conjugation.conjugate Traduce::Verb.new("hablar")
        expect(result).to eql "habláis"
      end
      it "conjugates a regular -er" do
        result = conjugation.conjugate Traduce::Verb.new("temer")
        expect(result).to eql "teméis"
      end
      it "conjugates a regular -ir" do
        result = conjugation.conjugate Traduce::Verb.new("partir")
        expect(result).to eql "partís"
      end
    end

    context "in the third person singular" do
      let!(:conjugation) {
        parent_conjugation.dup.tap do |c|
          c.person = 3
          c.plural = true
        end
      }
      it "conjugates a regular -ar" do
        result = conjugation.conjugate Traduce::Verb.new("hablar")
        expect(result).to eql "hablan"
      end
      it "conjugates a regular -er" do
        result = conjugation.conjugate Traduce::Verb.new("temer")
        expect(result).to eql "temen"
      end
      it "conjugates a regular -ir" do
        result = conjugation.conjugate Traduce::Verb.new("partir")
        expect(result).to eql "parten"
      end
    end
  end
end
