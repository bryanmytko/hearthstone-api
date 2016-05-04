require "spec_helper"

describe HearthstoneApi::Info do
  let(:info) { described_class }
  let(:locale) { "jaJP" }

  describe "all cards" do
    it "returns info" do
      VCR.use_cassette("hearthstone_api/info") do
        expect(info.all).to_not be_empty
      end
    end

    it "accepts options" do
      VCR.use_cassette("hearthstone_api/info/options") do
        query = info.all(locale: locale)
        expect(query["classes"]).to include("ドルイド")
      end
    end
  end
end
