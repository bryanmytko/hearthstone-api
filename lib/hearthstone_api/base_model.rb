module HearthstoneApi
  require "hearthstone_api/request"

  class BaseModel
    class << self
      include Request

      private

      def endpoint
        HearthstoneApi.endpoint
      end
    end
  end
end
