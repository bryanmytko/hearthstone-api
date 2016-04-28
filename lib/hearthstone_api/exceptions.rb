module HearthstoneApi
  class Error < StandardError; end
  class ResponseError < Error; end
  class UnsupportedMethodError < Error; end
end
