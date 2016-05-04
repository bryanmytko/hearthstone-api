require "spec_helper"

describe HearthstoneApi::Cards do
  let(:cards) { described_class }

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

  describe "single card" do
    context "when finding by id" do
      let(:id) { "EX1_572" }
      let(:locale) { "jaJP" }

      it "returns the card" do
        VCR.use_cassette("hearthstone_api/cards/single/id") do
          query = cards.single(id)
          expect(query.first["cardId"]).to eq(id)
        end
      end

      it "accepts options" do
        VCR.use_cassette("hearthstone_api/cards/single/id/options") do
          query = cards.single(id, locale: locale)
          expect(query.first["locale"]).to eq(locale)
        end
      end
    end

    context "when finding by name" do
      let(:name) { "Ysera" }
      let(:locale) { "jaJP" }
      let(:locale_name) { "イセラ" }

      it "returns the card" do
        VCR.use_cassette("hearthstone_api/cards/single/name") do
          query = cards.single(name)
          expect(query.first["name"]).to eq(name)
        end
      end

      it "accepts options" do
        VCR.use_cassette("hearthstone_api/cards/single/id/options") do
          query = cards.single(name, locale: locale)
          expect(query.first["name"]).to eq(locale_name)
        end
      end
    end
  end
end
