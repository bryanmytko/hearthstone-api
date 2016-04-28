module HearthstoneApi
  class Error < StandardError; end
  class ResponseError < Error; end
  class UnsupportedMethodError < Error; end
  class NoApiKeyError < Error; end
end
