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

    class ::String
      def capitalize_all
        split.map(&:capitalize).join(" ")
      end
    end
  end
end
