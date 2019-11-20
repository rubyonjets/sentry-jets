# Sentry Jets

[![Gem Version](https://img.shields.io/gem/v/sentry-jets.svg)](https://rubygems.org/gems/sentry-jets)

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

[Sentry](https://sentry.io) is an error tracking service that helps developers monitor and fix crashes in real time.

This gem adds Sentry error reporting support to [Jets: Ruby Serverless Framework](http://rubyonjets.com/).

This gem is not officially associated and written by Sentry. This is written by [tongueroo](https://www.linkedin.com/in/tongueroo/).  Looking for maintainers or someone who would like to see if they can get this integrated to the official [sentry-raven](https://github.com/getsentry/raven-ruby) gem instead. At which point, this gem should be deprecated.

## Installation

Add this line to your Jets project Gemfile:

```ruby
gem 'sentry-jets'
```

And then execute:

    bundle

Add the `SENTRY_DSN` env variable to the `.env` file in your project.  Here's an example of what `SENTRY_DSN` looks like.

.env:

    SENTRY_DSN=https://generated-random-user:generated-random-token@sentry.io/project-id

To get a `SENTRY_DSN`, sign up for an account at [sentry.io](https://sentry.io) and create a project.  For more info on [Env Files](http://rubyonjets.com/docs/env-files/), refer to the Jets docs.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tongueroo/sentry-jets.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
