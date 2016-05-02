module HearthstoneApi
  class Cards < BaseModel
    def all(options = {})
      get "/cards", options
    end

    def classes(klass, options = {})
      get "/cards/classes/#{klass.capitalize}", options
    end
  end
end
