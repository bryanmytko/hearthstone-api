module HearthstoneApi
  module Request
    def get(path, options = {})
      request(:get, path, options)
    end

    private

    def headers
      { "X-Mashape-Key" => HearthstoneApi.api_key }
    end

    def request(method, path, options)
      case method
      when :get
        response = HearthstoneApi.get(
          self.endpoint + path,
          headers: headers
        )
      else
        raise "That method is not supported."
      end
    end
  end
end
