module HearthstoneApi
  class Cards < BaseModel
    def self.all(options = {})
      get "/cards", options
    end

    def self.single(name_or_id, options = {})
      get "/cards/#{name_or_id}", options
    end

    def self.classes(klass, options = {})
      get "/cards/classes/#{klass.capitalize_all}", options
    end

    def self.type(type, options = {})
      get "/cards/types/#{type.capitalize_all}", options
    end

    def self.sets(set, options = {})
      get "/cards/sets/#{set.capitalize_all}", options
    end
  end
end
