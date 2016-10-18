![logo](http://us.battle.net/hearthstone/static/images/one-night-in-karazhan/en-us/logo.png)

# HearthstoneApi

[![Gem Version](https://badge.fury.io/rb/hearthstone_api.svg)](https://badge.fury.io/rb/hearthstone_api)

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

1. [All Cards](#all-cards)
1. [Single Card](#single-card)
1. [Class Cards](#class-cards)
1. [Types](#types)
1. [Sets](#sets)
1. [Races](#races)
1. [Qualities](#qualities)
1. [Factions](#factions)
1. [Search](#search)
1. [Card Backs](#card-backs)
1. [Info](#info)

Examples:

#### All Cards
_N.B. Cards come back organized by the set they belong to_

```ruby
HearthstoneApi::Cards.all(attack: 12)

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

#### Single Card
_This endpoint accepts name or card ID_

```ruby
HearthstoneApi::Cards.single("Ysera", locale: "jaJP")

=> [{"cardId"=>"EX1_572",
      "name"=>"イセラ",
      "cardSet"=>"Classic",
      "type"=>"Minion",
      "faction"=>"Neutral",
      "rarity"=>"Legendary",
      "cost"=>9,
      [...]

HearthstoneApi::Cards.single("EX1_572", locale: "jaJP")

=> [{"cardId"=>"EX1_572",
      "name"=>"イセラ",
      "cardSet"=>"Classic",
      "type"=>"Minion",
      "faction"=>"Neutral",
      "rarity"=>"Legendary",
      "cost"=>9,
      [...]
```

#### Class Cards

```ruby
HearthstoneApi::Cards.classes("Paladin", cost: 2)

=> [{"cardId"=>"OG_311",
      "name"=>"A Light in the Darkness",
      "cardSet"=>"Whispers of the Old Gods",
      "type"=>"Spell",
      "rarity"=>"Common",
      "cost"=>2,
      "text"=>"<b>Discover</b> a minion.\nGive it +1/+1.",
      [...]
```

#### Types

```ruby
HearthstoneApi::Cards.type("Weapon")

=> [{"cardId"=>"TB_SPT_BossWeapon",
      "name"=>"Armory",
      "cardSet"=>"Tavern Brawl",
      "type"=>"Weapon",
      "cost"=>1,
      "attack"=>0,
      "durability"=>1,
      [...]
```

#### Sets

```ruby
HearthstoneApi::Cards.sets("Blackrock Mountain")

=> [{"cardId"=>"BRMA16_1",
      "name"=>"Atramedes",
      "cardSet"=>"Blackrock Mountain",
      "type"=>"Hero",
      "health"=>30,
      [...]
```

#### Races
_Mrglglrglglglglglglgl!_

```ruby
HearthstoneApi::Cards.races("Murloc")

=> [{"cardId"=>"PRO_001at",
      "name"=>"Murloc",
      "cardSet"=>"Promotion",
      "type"=>"Minion",
      "cost"=>0,
      "attack"=>1,
      "health"=>1,
      "race"=>"Murloc",
      [...]
```

#### Qualities

```ruby
HearthstoneApi::Cards.qualities("Legendary")

=> [{"cardId"=>"BRMA14_3",
      "name"=>"Arcanotron",
      "cardSet"=>"Blackrock Mountain",
      "type"=>"Minion",
      "rarity"=>"Legendary",
      [...]
```

#### Factions

```ruby
HearthstoneApi::Cards.factions("Horde")

=> [{"cardId"=>"CS2_189",
      "name"=>"Elven Archer",
      "cardSet"=>"Basic",
      "type"=>"Minion",
      "faction"=>"Horde",
      "rarity"=>"Free",
      "cost"=>1,
      "attack"=>1,
      "health"=>1,
      [...]
```

#### Search
_Returns cards by partial name_

_N.B. When searching by locale, the search term must be in that language_

```ruby
HearthstoneApi::Cards.search("Onyx")

=> [{"cardId"=>"BRMA17_3",
      "name"=>"Onyxia",
      "cardSet"=>"Blackrock Mountain",
      "type"=>"Hero",
      "health"=>15,
      [...]

HearthstoneApi::Cards.search("イセラ", locale: "jaJP")

=> [{"cardId"=>"LOEA16_15",
      "name"=>"イセラの涙",
      "cardSet"=>"The League of Explorers",
      "type"=>"Spell",
      "cost"=>0,
      "text"=>"このターンの間のみ、マナクリスタル\nを4つ獲得する。",
```

#### Card Backs

```ruby
HearthstoneApi::Cardbacks.all

=> [{"cardBackId"=>"0",
      "name"=>"Classic",
      "description"=>"The only card back you’ll ever need.",
      "source"=>"startup",
      "sourceDescription"=>"Default",
      "enabled"=>true,
      "img"=>
        "http://wow.zamimg.com/images/hearthstone/backs/original/Card_Back_Default.png",
      "imgAnimated"=>
        "http://wow.zamimg.com/images/hearthstone/backs/animated/Card_Back_Default.gif",
      "sortCategory"=>"1",
      "sortOrder"=>"1",
      [...]
```

#### Info

```ruby
HearthstoneApi::Info.all

=> {"patch"=>"5.0.0.12574",
      "classes"=>
        ["Druid",
          "Hunter",
          "Mage",
          "Paladin",
          "Priest",
          "Rogue",
          "Shaman",
          "Warlock",
          "Warrior",
          "Dream"],
      "sets"=>
        ["Basic",
          "Classic",
          "Credits",
          "Naxxramas",
          [...]
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/hearthstone_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Development

    gem build hearthstone_api.gemspec
    gem install ./hearthstone_api-1.0.2.gem
