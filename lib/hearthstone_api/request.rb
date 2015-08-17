module HearthstoneApi
  module Request
    def get(path, options = {})
      response = request(:get, path, options)
      raise HearthstoneApi::ResponseError.new unless response.code == 200
      return response
    end

    private

    def headers
      { "X-Mashape-Key" => HearthstoneApi.api_key }
    end

    def request(method, path, options)
      case method
      when :get
        response = HearthstoneApi.get(
          endpoint + path,
          headers: headers
        )
      else
        raise "That method is not supported."
      end
    end
  end
end
