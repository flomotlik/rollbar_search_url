# RollbarSearchURL 

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/papertrail_url`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rollbar_search_url'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rollbar_search_url

## Usage

```ruby
require 'rollbar_search_url'
query = RollbarSearchUrl::Query.new user:YOUR_USERNAME, project: YOUR_PROJECT_NAME
query.where 'timestamp > unix_timestamp() - 60 * 60 * 24'
query.where “request.commit_id = abcde"
query.order_by 'timestamp DESC'
query.url
```

You can use the url method to get a link to an RQL site

The gem supports the following methods

* select
* where
* group_by
* order_by
* limit

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/flomotlik/rollbar_search_url/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
