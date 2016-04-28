module HearthstoneApi
  class Cards < BaseModel
    def all
      get "/cards"
    end
  end
end
