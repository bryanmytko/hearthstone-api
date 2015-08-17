module HearthstoneApi
  class Cards < BaseModel
    def all
      response = get "/cards"
      return response
    end
  end
end
