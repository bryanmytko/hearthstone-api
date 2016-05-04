require "httparty"
require "dotenv"

Dotenv.load

require "hearthstone_api/base_model"
require "hearthstone_api/cardbacks"
require "hearthstone_api/cards"
require "hearthstone_api/configuration"
require "hearthstone_api/connection"
require "hearthstone_api/exceptions"
require "hearthstone_api/version"

module HearthstoneApi
  include HTTParty
  extend Configuration
end
