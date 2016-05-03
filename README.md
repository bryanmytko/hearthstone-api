![logo](http://i.imgur.com/GisaPGO.png)

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

Create a .env file and add your [API Key](https://market.mashape.com/omgvamp/hearthstone)

    $ touch .env

**In the .env file:**

    HEARTHSTONE_API_KEY=xxxxxxxxxxxxxxxxxxxx

## Endpoints

All endpoints available via [hearthstoneapi.com](http://hearthstoneapi.com)
**[Currently incomplete]**

Examples:

#### All Cards
_N.B. Cards come back organized by the set they belong to_

```ruby
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
```

#### Class Cards

```ruby
cards = HearthstoneApi::Card.new
cards.classes("Paladin", cost: 2)

=> [{"cardId"=>"OG_311",
      "name"=>"A Light in the Darkness",
      "cardSet"=>"Whispers of the Old Gods",
      "type"=>"Spell",
      "rarity"=>"Common",
      "cost"=>2,
      "text"=>"<b>Discover</b> a minion.\nGive it +1/+1.",
      [...]
```

#### Single Card
_This endpoint accepts name or card ID_

```ruby
cards = HearthstoneApi::Card.new
cards.single("Ysera", locale: "jaJP")

=> [{"cardId"=>"EX1_572",
      "name"=>"イセラ",
      "cardSet"=>"Classic",
      "type"=>"Minion",
      "faction"=>"Neutral",
      "rarity"=>"Legendary",
      "cost"=>9,
      [...]

cards = HearthstoneApi::Card.new
cards.single("EX1_572", locale: "jaJP")

=> [{"cardId"=>"EX1_572",
      "name"=>"イセラ",
      "cardSet"=>"Classic",
      "type"=>"Minion",
      "faction"=>"Neutral",
      "rarity"=>"Legendary",
      "cost"=>9,
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
