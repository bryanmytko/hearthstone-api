module HearthstoneApi
  require "hearthstone_api/request"

  class BaseModel
    extend Request

    def self.endpoint
      HearthstoneApi.endpoint
    end
  end
end
