require "hearthstone_api"
require "rspec"
require "vcr"
require "byebug"
require "dotenv"

VCR.configure do |c|
  c.cassette_library_dir = "spec/support/vcr_cassettes"
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.allow_http_connections_when_no_cassette = false
  c.default_cassette_options = {:record => :new_episodes}
end

RSpec.configure do |config|
  Dotenv.load
end
