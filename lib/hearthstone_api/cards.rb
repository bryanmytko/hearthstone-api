module HearthstoneApi
  class Cards < BaseModel
    def self.all(options = {})
      get "/cards", options
    end

    def self.single(name_or_id, options = {})
      get "/cards/#{name_or_id}", options
    end

    def self.classes(klass, options = {})
      get "/cards/classes/#{klass.capitalize}", options
    end

    def self.type(type, options = {})
      get "/cards/types/#{type.capitalize}", options
    end
  end
end
