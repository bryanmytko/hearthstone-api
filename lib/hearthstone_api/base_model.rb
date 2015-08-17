module HearthstoneApi
  require "hearthstone_api/request"

  class BaseModel
    include Request

    private

    def endpoint
      HearthstoneApi.endpoint
    end
  end
end
