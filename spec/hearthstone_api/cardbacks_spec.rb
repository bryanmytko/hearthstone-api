require "spec_helper"

describe HearthstoneApi::Cardbacks do
  let(:cardbacks) { described_class }
  let(:locale) { "jaJP" }

  describe "all cardbacks" do
    it "returns cards" do
      VCR.use_cassette("hearthstone_api/cardbacks") do
        expect(cardbacks.all).to_not be_empty
      end
    end

    it "accepts options" do
      VCR.use_cassette("hearthstone_api/cardbacks/options") do
        expect(cardbacks.all(locale: locale).first["locale"]).to eq(locale)
      end
    end
  end
end
