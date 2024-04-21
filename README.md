# Engagespot Ruby Gem

The Engagespot Ruby Gem provides a convenient interface for integrating with the Engagespot API in Ruby applications. This gem allows you to send notifications and create or update user profiles easily.

## Installation

To install the Engagespot gem, add it to your Gemfile:

```ruby
gem 'engagespot', '~> 1.0'
```

Then, run:

```bash
bundle install
```

Alternatively, you can install it via RubyGems:

```bash
gem install engagespot
```

## Usage

### 1. `send_notification` Function

The `send_notification` function allows you to send notifications to specific recipients. Here's how you can use it:

```ruby
require 'engagespot'

# Initialize Engagespot with your API key and secret
engagespot = Engagespot.new(api_key: 'your_api_key', api_secret: 'your_api_secret')

# Send a notification
send_request = {
    notification:{
        title: "Test notification from Ruby",
    },
    recipients:['unique-user-id']
}

response = engagespot.send(send_request)

# Output the result
puts response
```

### 2. `create_or_update_user` Function

The `create_or_update_user` function allows you to create or update user profiles. Here's how you can use it:

```ruby
require 'engagespot'

# Initialize Engagespot with your API key and secret
engagespot = Engagespot.new(api_key: 'your_api_key', api_secret: 'your_api_secret')

# Create or update a user profile
result = engagespot.create_or_update_user('user_identifier', profile: { name: 'John Doe', email: 'john@example.com' })

# Output the result
puts result
```

## Need Help?

If you need any further assistance or have questions about using the Engagespot Ruby Gem, feel free to join our Discord channel: [Engagespot Discord Channel](https://disboard.org/server/join/936616763930587136)
