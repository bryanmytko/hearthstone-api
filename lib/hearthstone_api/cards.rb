module HearthstoneApi
  class Cards < BaseModel
    def all
      response = self.class.get "/cards"

      #@TODO Create custom exceptions to handle different responses
      raise "Unexpected Response from API" unless response.code == 200

      return response
    end
  end
end
