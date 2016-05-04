module HearthstoneApi
  class Info < BaseModel
    def self.all(options = {})
      get "/info", options
    end
  end
end
