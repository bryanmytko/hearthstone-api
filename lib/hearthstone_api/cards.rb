module HearthstoneApi
  class Cards < BaseModel
    def all(options = {})
      get "/cards", options
    end

    def classes(klass, options = {})
      get "/cards/classes/#{klass.capitalize}", options
    end

    def single(name_or_id, options = {})
      get "/cards/#{name_or_id}", options
    end
  end
end
