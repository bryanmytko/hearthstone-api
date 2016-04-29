# HearthstoneApi

API Wrapper for hearthstoneapi.com

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hearthstone_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hearthstone_api

## Endpoints

All endpoints available via [http://hearthstoneapi.com/](hearthstoneapi.com)

Examples can be found here:

### All Cards

  cards = HearthstoneApi::Card.new
  cards.all(attack: 12)

  => {"Basic"=>[],
    "Classic"=>
      [{"cardId"=>"NEW1_030",
        "name"=>"Deathwing",
        "cardSet"=>"Classic",
        "type"=>"Minion",
        "rarity"=>"Legendary",
        "cost"=>10,
        "attack"=>12,
        "health"=>12,
        [...]

## Contributing

1. Fork it ( https://github.com/[my-github-username]/hearthstone_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Development

gem build hearthstone_api.gemspec
gem install ./hearthstone_api-0.0.1.gem
