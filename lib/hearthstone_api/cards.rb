module HearthstoneApi
  class Cards < BaseModel
    def all(options = {})
      get "/cards", options
    end
  end
end
