require "spec_helper"

describe HearthstoneApi::Cards do
  let(:cards) { described_class.new }

  describe "all cards" do
    let(:option) { "attack" }

    it "returns cards" do
      VCR.use_cassette("hearthstone_api/cards") do
        expect(cards.all).to_not be_empty
      end
    end

    it "accepts options" do
      VCR.use_cassette("hearthstone_api/cards/options") do
        query = cards.all(option => 1)
        option_values = query[query.keys.first].collect{ |c| c[option] }.uniq
        expect(option_values).to eq([1])
      end
    end
  end

  describe "class cards" do
    let(:klass) { "Paladin" }
    let(:option) { "cost" }

    it "returns class cards" do
      VCR.use_cassette("hearthstone_api/cards/classes") do
        query = cards.classes(klass, option => 1)
        class_values = query.collect{ |c| c["playerClass"] }.uniq
        expect(class_values).to eq([klass])
      end
    end

    it "accepts options" do
      VCR.use_cassette("hearthstone_api/cards/classes/options") do
        query = cards.classes(klass, option => 1)
        option_values = query.collect { |c| c[option] }.uniq
        expect(option_values).to eq([1])
      end
    end
  end
end
