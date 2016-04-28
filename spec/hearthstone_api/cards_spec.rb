require "spec_helper"

describe HearthstoneApi::Cards do
  let(:cards) { described_class.new }
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
