require "httparty"
require "hearthstone_api/version"
require "hearthstone_api/configuration"
require "hearthstone_api/connection"

module HearthstoneApi
  include HTTParty
  extend Configuration
end
