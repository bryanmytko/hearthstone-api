module HearthstoneApi
  class Cardbacks < BaseModel
    def self.all(options = {})
      get "/cardbacks", options
    end
  end
end
