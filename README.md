# Traduce
[![Build Status](https://travis-ci.org/pducks32/traduce.svg)](https://travis-ci.org/pducks32/traduce)
[![Code Climate](https://codeclimate.com/github/pducks32/traduce/badges/gpa.svg)](https://codeclimate.com/github/pducks32/traduce)
[![Test Coverage](https://codeclimate.com/github/pducks32/traduce/badges/coverage.svg)](https://codeclimate.com/github/pducks32/traduce)

This gem can conjugate any verb in Spanish!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'traduce'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install traduce

## Usage

```ruby
require "traduce"
Traduce.conjugate("hablar", person: 1) #=> "hablo"
Traduce.conjugate("temer", person: 2) #=> "temes"
Traduce.conjugate("partir", person: 3) #=> "parte"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/pducks32/traduce/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
