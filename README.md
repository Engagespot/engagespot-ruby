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

The easiest way to send notifications in Engagespot is by creating message workflows in [Engagespot console](https://console.engagespot.co) and trigger it using this Python library.


```ruby
require 'engagespot'

# Initialize Engagespot with your API key and secret
engagespot = Engagespot.new(api_key: 'your_api_key', api_secret: 'your_api_secret')

# Send a notification
send_request = {
    notification:{
        workflow: {
            identifier: "workflow-identifier"
        },
    },
    sendTo:{
        recipients: ['user-identifier']
    }
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

# Detailed Guide
Read [Engagespot docs](https://docs.engagespot.co/docs/introduction/quick-start) to learn how to build and send notification workflows.

## Need Help?

If you need any further assistance or have questions about using the Engagespot Ruby Gem, feel free to join our Discord channel: [Engagespot Discord Channel](https://disboard.org/server/join/936616763930587136)
