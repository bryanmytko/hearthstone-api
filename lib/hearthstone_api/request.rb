module HearthstoneApi
  module Request
    require "uri"

    def get(path, options = {})
      response = request(:get, path, options)
      raise HearthstoneApi::ResponseError.new unless response.code == 200
      return response
    end

    private

    def headers
      { "X-Mashape-Key" => HearthstoneApi.api_key }
    end

    def request(method, path, options = {})
      case method
      when :get
        options = { headers: headers, query: options }

        response = HearthstoneApi.get(
          URI.encode(endpoint + path),
          options
        )
      else
        raise HearthstoneApi::UnsupportedMethodError.new
      end
    end
  end
end
