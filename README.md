# Capistrano::Inspeqtor

[Inspeqtor](http://contribsys.com/inspeqtor) integration for Capistrano

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-inspeqtor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-inspeqtor


## Usage
```ruby
    # Capfile

    require 'capistrano/inspeqtor'
```

By default inspeqtor hooks will run on all roles.
You can change this behavior by setting :inspeqtor_role

```
 role :app, %w{example.com}
 set :inspeqtor_role, :app
```

## Contributing

1. Fork it ( https://github.com/seuros/capistrano-inspeqtor/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
