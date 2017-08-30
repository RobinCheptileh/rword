# Rword

[![Gem Version](https://badge.fury.io/rb/rword.svg)](https://badge.fury.io/rb/rword)

Rword is a ruby gem that generates all possible english words from a set of letters and a specified limit. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rword'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rword

## Usage

### In  a program

```ruby
require 'rword'

robin = Rword::Worder.generate('robin', 3, true)

# => ["rob", "orb", "nor", "obi", "rib", "bio", "bon", "ion", "bin", "nib"]
```

The method returns an array of words found.

#### Parameters

**Parameter 1: Letters (String, Required)** -The letters that the words are going to be generated from. Can be a word or a random set of letters.

**Parameter 2: Limit (Integer, Required)** -The length of words that are to be generated.

**Parameter 3: English words only? (Boolean, Optional, Default: True)** -Whether to generate english words only or all set of letters possible

### Via the command line


    $ rword robin 3 true
    rob
    orb
    nor
    obi
    rib
    bio
    bon
    ion
    bin
    nib

Arguments are similar to the input parameters.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/robincheptileh/rword. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Rword project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/robincheptileh/rword/blob/master/CODE_OF_CONDUCT.md).
