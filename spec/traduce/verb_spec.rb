require "spec_helper"

describe Traduce::Verb do
  it "knows its proper ending" do
    expect(Traduce::Verb.new("hablar").ending).to eql "ar"
  end
  it "knows its suffix letter" do
    expect(Traduce::Verb.new("hablar").suffix_letter).to eql "a"
  end
  it "knows its stem" do
    expect(Traduce::Verb.new("hablar").stem).to eql "habl"
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
