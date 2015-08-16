require "spec_helper"

describe HearthstoneApi::Cards do
  let(:cards) { described_class.new }

  it "returns cards" do
    VCR.use_cassette("hearthstone_api/cards") do
      expect(cards.all).to_not be_empty
    end
  end
end
